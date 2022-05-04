"use strict"

import express from 'express'
import mysql from 'mysql2'
import fs from 'fs'

const app = express();
const port = 3000;

app.use(express.json());

app.use('/js', express.static('./js'))
app.use('/css', express.static('./css'))
app.use('/html', express.static('./html'))
app.use('/images', express.static('./images'))

function connectToDB()
{
    try{
        return mysql.createConnection({host:'localhost', user:'Michael21', password:'Messi10_Dybala21', database:'jazzsmash'});
    }
    catch(error)
    {
        console.log(error);
    }   
}

app.get('/', (request,response)=>{
    fs.readFile('./html/gameSection.html', 'utf8', (err, html)=>{
        if(err) response.status(500).send('There was an error: ' + err);
        console.log('Loading page...');
        response.send(html);
    })
    
});

// app.get('/home', (request,response)=>{
//     fs.readFile('./html/JazzSmashWeb.html', 'utf8', (err, html)=>{
//         if(err) response.status(500).send('There was an error: ' + err);
//         console.log('Loading page...');
//         response.send(html);
//     })
// });

// app.get('/about', (request,response)=>{
//     fs.readFile('./html/AboutUsJazzSmash.html', 'utf8', (err, html)=>{
//         if(err) response.status(500).send('There was an error: ' + err);
//         console.log('Loading page...');
//         response.send(html);
//     })
// });

// app.get('/gd', (request,response)=>{
//     fs.readFile('./html/GameDevelopmentJazzSmash.html', 'utf8', (err, html)=>{
//         if(err) response.status(500).send('There was an error: ' + err);
//         console.log('Loading page...');
//         response.send(html);
//     })
// });

// app.get('/hc', (request,response)=>{
//     fs.readFile('./html/HealthCareJazzSmash.html', 'utf8', (err, html)=>{
//         if(err) response.status(500).send('There was an error: ' + err);
//         console.log('Loading page...');
//         response.send(html);
//     })
// });

//Get methods

app.get('/api/user_data/get', (request, response)=>{
    let connection = connectToDB();

    try{

        connection.connect();

        connection.query('select user_name, user_id, country from user_data', (error, results, fields)=>{
            if(error) console.log(error);
            console.log(JSON.stringify(results));
            response.json(results);
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

app.get('/api/attempts/get', (request, response)=>{
    let connection = connectToDB();

    try{

        connection.connect();

        connection.query('select * from attempts', (error, results, fields)=>{
            if(error) console.log(error);
            console.log(JSON.stringify(results));
            response.json(results);
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

app.get('/api/level_data/get', (request, response)=>{
    let connection = connectToDB();

    try{

        connection.connect();

        connection.query('select * from level_data', (error, results, fields)=>{
            if(error) console.log(error);
            console.log(JSON.stringify(results));
            response.json(results);
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

app.get('/api/music_data/get', (request, response)=>{
    let connection = connectToDB();

    try{

        connection.connect();

        connection.query('select * from music_data', (error, results, fields)=>{
            if(error) console.log(error);
            console.log(JSON.stringify(results));
            response.json(results);
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

//Post methods

app.post('/api/user_data/post', (request, response)=>{

    try{
        console.log(request.headers);

        let connection = connectToDB();
        connection.connect();

        const query = connection.query('insert into user_data set ?', request.body ,(error, results, fields)=>{
            if(error) 
                console.log(error);
            else
                response.json({'message': "Data inserted correctly."})
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

app.post('/api/attempts/post', (request, response)=>{

    try{
        console.log(request.headers);

        let connection = connectToDB();
        connection.connect();

        const query = connection.query('insert into attempts set ?', request.body ,(error, results, fields)=>{
            if(error) 
                console.log(error);
            else
                response.json({'message': "Data inserted correctly."})
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

app.post('/api/level_data/post', (request, response)=>{

    try{
        console.log(request.headers);

        let connection = connectToDB();
        connection.connect();

        const query = connection.query('insert into level_data set ?', request.body ,(error, results, fields)=>{
            if(error) 
                console.log(error);
            else
                response.json({'message': "Data inserted correctly."})
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

app.post('/api/music_data/post', (request, response)=>{

    try{
        console.log(request.headers);

        let connection = connectToDB();
        connection.connect();

        const query = connection.query('insert into music_data set ?', request.body ,(error, results, fields)=>{
            if(error) 
                console.log(error);
            else
                response.json({'message': "Data inserted correctly."})
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

//Put methods

app.put('/api/user_data/put', (request, response)=>{
    try{
        let connection = connectToDB();
        connection.connect();

        const query = connection.query('update user_data set user_name = ?, password = ?, country = ? where user_id = ?', [request.body['user_name'], request.body['password'], request.body['country'], request.body['user_id']], (error, results, fields)=>{
            if(error) 
                console.log(error);
            else
                response.json({'message': "Data updated correctly."})
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

app.put('/api/attempts/put', (request, response)=>{
    try{
        let connection = connectToDB();
        connection.connect();

        const query = connection.query('update attempts set level_att = ?, score = ?. accuracy = ?, time_elapsed = ?, date_time = ? where user_id = ?', [request.body['level_att'], request.body['score'], request.body['accuracy'], request.body['time_elapsed'], request.body['date_time'], request.body['user_id']], (error, results, fields)=>{
            if(error) 
                console.log(error);
            else
                response.json({'message': "Data updated correctly."})
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

app.put('/api/level_data/put', (request, response)=>{
    try{
        let connection = connectToDB();
        connection.connect();

        const query = connection.query('update level_data set user_id = ?, lvl_highscore = ?, lvl_rating = ?, lvl_attempts = ? where level_name = ?', [request.body['user_id'], request.body['lvl_highscore'], request.body['lvl_rating'], request.body['lvl_attempts'], request.body['level_name']], (error, results, fields)=>{
            if(error) 
                console.log(error);
            else
                response.json({'message': "Data updated correctly."})
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

app.put('/api/music_data/put', (request, response)=>{
    try{
        let connection = connectToDB();
        connection.connect();

        const query = connection.query('update music_data set duration = ?, note_amount = ? where song_name = ?', [request.body['duration'], request.body['note_amount'], request.body['song_name']], (error, results, fields)=>{
            if(error) 
                console.log(error);
            else
                response.json({'message': "Data updated correctly."})
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

//Delete methods

app.delete('/api/user_data/delete', (request, response)=>{
    try
    {
        let connection = connectToDB();
        connection.connect();

        const query = connection.query('delete from user_data where user_id= ?', [request.body['id']] ,(error, results, fields)=>{
            if(error) 
                console.log(error);
            else
                response.json({'message': "Data deleted correctly."})
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

app.delete('/api/attempts/delete', (request, response)=>{
    try
    {
        let connection = connectToDB();
        connection.connect();

        const query = connection.query('delete from attempts where user_id= ?', [request.body['id']] ,(error, results, fields)=>{
            if(error) 
                console.log(error);
            else
                response.json({'message': "Data deleted correctly."})
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

app.delete('/api/level_data/delete', (request, response)=>{
    try
    {
        let connection = connectToDB();
        connection.connect();

        const query = connection.query('delete from level_data where level_name = ?', [request.body['level_name']] ,(error, results, fields)=>{
            if(error) 
                console.log(error);
            else
                response.json({'message': "Data deleted correctly."})
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

app.delete('/api/music_data/delete', (request, response)=>{
    try
    {
        let connection = connectToDB();
        connection.connect();

        const query = connection.query('delete from music_data where song_name = ?', [request.body['song_name']] ,(error, results, fields)=>{
            if(error) 
                console.log(error);
            else
                response.json({'message': "Data deleted correctly."})
        });

        connection.end();
    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

//verify users

app.post('/api/user_data/verify', (request,response)=>{
    let connection = connectToDB();

    try{

        connection.connect();

        connection.query('SELECT COUNT(1) from game_user where user_name=? and password=?', [request.body['user_name'], request.body['password']], (error, results, fields)=>{
            if(error) console.log(error);
            console.log(JSON.stringify(results[0]["COUNT(1)"]));
            response.json(results[0]["COUNT(1)"]);
        });

        connection.end();

    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});

//get id

app.post('/api/user_data/get_id', (request,response)=>{
    let connection = connectToDB();

    try{

        connection.connect();

        connection.query('call get_id(?)', [request.body['user_name']], (error, results, fields)=>{
            if(error) 
                console.log(error);
            else
                console.log(JSON.stringify(results[0][0]));
                response.json(results[0][0]["user_id"]);
        });

        connection.end();

    }
    catch(error)
    {
        response.json(error);
        console.log(error);
    }
});


app.listen(port, ()=>
{
    console.log(`App listening at http://localhost:${port}`);
});