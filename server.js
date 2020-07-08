const express = require('express'); //подключение модуля express
const app = express(); //создание web-приложения
const server = require('http').Server(app); //создание http-сервера для работы с приложением
const io = require('socket.io')(server); //подключение модуля socket.io к http-серверу
const mysql = require("mysql2"); //подключение mysql2

io.on('connection', (socket) => {

    //событие авторизации
    socket.on('LOGIN', ({login, password}) => {
        //sql-запрос
        connection.query(('SELECT user_id, login, image FROM users WHERE BINARY login = "' + login + '" AND BINARY password = "' + password + '"'),
            (err, results) => {
                //если результат есть
                if (results[0] != null) {
                    socket.emit('LOGIN:YES', results[0]); //отправка запроса и результатов
                    socket.join(results[0].user_id); //подключения текущего сокета к комнате
                }
                else {
                    socket.emit('LOGIN:NO'); //отправка запроса
                }

        });
    }); 

    //событие регистрации
    socket.on('REG', (data) => {
        //sql-запрос
        connection.query(('SELECT * FROM users WHERE BINARY login = ?'), data.login,
            (err, results) => {       
                //если результат есть         
                if (results[0] != null) {
                    socket.emit('REG:NO'); //отправка запроса
                }
                else {
                    connection.query(('INSERT INTO users (login, password) VALUES (?, ?)'), [data.login, data.password]);
                    socket.emit('REG:YES'); //отправка запроса
                }

        });
    });

    //событие редактирования информации о пользователе
    socket.on('EDIT', (data) => {
        //sql-запрос
        connection.query(('SELECT user_id, login, image FROM users WHERE user_id = ? AND BINARY password = ?'), [data.user_id, data.oldPassword],
            (err, results) => {
                //если результат есть
                if (results[0] != null) {
                    //sql-запрос
                    connection.query(('UPDATE users SET login = ?, password = ?  WHERE user_id = ?'), [data.login, data.password, data.user_id]);
                    socket.emit('EDIT:YES', data.login); //отправка запроса и полученных от пользователя данных
                }
                else {
                    socket.emit('EDIT:NO'); //отправка запроса
                }
        });
    });

    //событие нахождения пользователя по его логину
    socket.on('USER:FIND', (search) => {
        //sql-запрос
        connection.query(('SELECT user_id, login, image FROM users WHERE login = ?'), search,
            (err, results) => {
                //если результат есть
                if (results[0] != null) {
                    socket.emit('USER:FOUND', results); //отправка запроса и результатов
                }
            });
    });

    //событие поиска всех контактов пользователя
    socket.on('USER:FRIENDS', (search) => {
        //sql-запрос
        connection.query(('SELECT user_id, login, image FROM friends INNER JOIN users ON user2=user_id WHERE user1 = ? UNION SELECT user_id, login, image FROM friends INNER JOIN users ON user_id=user1 WHERE user2 = ?'), [search, search],
            (err, results) => {
                //если результат есть
                if (results[0] != null) {
                    socket.emit('USER:FOUNDFRIENDS', results); //отправка запроса и результатов
                }
            });
    });

    //событие поиска всех сообщений, относящихся к пользователю
    socket.on('DIALOG:FIND', (search) => {
        //sql-запрос
        connection.query(('SELECT * FROM messages WHERE sender = ? OR receiver = ?'), [search, search],
            (err, results) => {
                if (results[0] != null) {
                    socket.emit('DIALOG:FOUND', results); //отправка запроса и результатов
                }
            });
    });

    //событие отправки сообщения
    socket.on('MESSAGE:SEND', (data) => {
        //sql-запрос
        connection.query(('INSERT INTO messages (value, sender, receiver) VALUES (?, ?, ?)'), data);
        const obj = {
            value: data[0],
            sender: data[1],
        };
        socket.to(data[2]).emit('NEW:MESSAGE', obj); //отправка запроса в комнату получателя и данных, полученных с запросом
    });

    socket.on('NEW:FRIEND', (data) => {
        connection.query(('INSERT INTO friends (user1, user2) VALUES (?, ?)'), data);
        connection.query(('SELECT user_id, login, image FROM friends INNER JOIN users ON user2=user_id WHERE (user1 = ? AND user2 = ?) UNION SELECT users.* FROM friends INNER JOIN users ON user1=user_id WHERE (user1 = ? AND user2 = ?);'), [data[1], data[0], data[0], data[1]],
            (err, results) => {
                //если результат есть
                if (results != null) {
                    socket.to(data[1]).emit('USER:FOUNDNEWFRIEND', results[0]); //отправка запроса и результатов
                }
            });
    });

    //событие отключения сокета
    socket.on('disconnect', () => {
        console.log(socket.id, "disconnected"); //вывод сообщения
    });

    console.log('socket connected', socket.id); //вывод сообщения, выполняется при подключении нового сокета
});

//сервер слушает порт 8888
server.listen(8888, (err) => {
    if (err) {
        throw Error(err); //возвращает ошибку
    }
    console.log('Started'); //сообщение о том, что он работает
});

//создание подключения к серверу базы данных
const connection = mysql.createConnection({
    //параметры подключения к бд
    host: "localhost",
    user: "root",
    database: "Messenger_db",
    password: "root"
});
// тестирование подключения
 connection.connect(function(err){
    if (err) {
      return console.error("Ошибка: " + err.message); //вывод ошибки в консоль
    }
    else{
      console.log("Подключение к серверу MySQL успешно установлено"); //вывод сообщения об успешном подключении
    }
 });