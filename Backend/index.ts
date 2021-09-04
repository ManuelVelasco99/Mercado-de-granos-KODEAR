import Server from "./class/server";
import mysqlconection from './bin/mysqlConection';
import express from 'express';
import posicionesRoutes from './routes/posiciones';
import variables_entorno from "./config";
import Usuarios from "./class/usuario";
import cors from 'cors';

//Instanciando el servidor Web
const server = new Server();

server.start(()=>{
    if(variables_entorno.NODE_ENV == 'development')
    console.log(`servidor corriendo en puerto :${server.port} y en host ${server.host}`);
});

if(variables_entorno.NODE_ENV == 'development2') Usuarios.insetarUsuario();

// body parser
server.app.use(express.urlencoded({ extended: false }));
server.app.use(express.json()); //express.json()

//cors
server.app.use(cors());

//Conexión MySQL

mysqlconection;

//Rutas de la app

server.app.use('/posiciones', posicionesRoutes);