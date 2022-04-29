"use strict"

import express from 'express'
import mysql from 'mysql2'
import fs from 'fs'

const app = express();
const port = 5000;

app.use(express.json());

app.use('/js', express.static('./js'))
app.use('/css', express.static('./css'))

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
    fs.readFile('./html/mysqlLevelDataUserJS.html', 'utf8', (err, html)=>{
        if(err) response.status(500).send('There was an error: ' + err);
        console.log('Loading page...');
        response.send(html);
    })
});

app.get('/api/level_data_user', (request, response)=>{
    let connection = connectToDB();

    try{

        connection.connect();

        connection.query('select * from level_data_user', (error, results, fields)=>{
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

app.post('/api/level_data_user', (request, response)=>{

    try{
        console.log(request.headers);

        let connection = connectToDB();
        connection.connect();

        const query = connection.query('insert into level_data_user set ?', request.body ,(error, results, fields)=>{
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

app.put('/api/level_data_user', (request, response)=>{
    try{
        let connection = connectToDB();
        connection.connect();

        const query = connection.query('update level_data_user set user_name = ?, country = ? where user_id = ?', [request.body['user_name'], request.body['country'], request.body['user_id']], (error, results, fields)=>{
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

app.delete('/api/level_data_user', (request, response)=>{
    try
    {
        let connection = connectToDB();
        connection.connect();

        const query = connection.query('delete from level_data_user where user_id= ?', [request.body['id']] ,(error, results, fields)=>{
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
})

app.listen(port, ()=>
{
    console.log(`App listening at http://localhost:${port}`);
});