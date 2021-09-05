# Mercado-de-granos-KODEAR

Este proyecto pertenece a la evaluación técnica para la empresa KODEAR.

## Alcance funcional

En el proyecto se desarrollo en cuanto al Backend:
* Un listado de las posiciones, que puede ser consultado mediante un servicio api REST
* El alta de usuarios, mediante un comando por consola.

Y en cuanto al Frontend:
* El layout de una webapp responsive con menú lateral, y 3 opciones fijas.
* Una de las opciones del menu nos redirecciona y nos muestra un listado, que obtiene consultando al backend mediante un servicio.

## Tecnologías utilizadas

* NodeJs

* Framework Express

* MySql

* Angular

* Angular Material

* TypeScript

* JavaScrpit

# Instalaciones necesarias
A continuación se encuentran los pasos para realizar todas las instalaciones necesarias para el correctro funcionamiento de la aplicación.

## Importar la base de datos

Para comenzar ejecutaremos el script que se encuentra en la carpeta DB/DB_MercadoDeGranos.sql .
Este script es el encargado de crear la base de datos, las tablas e insertar los datos correspondientes.

## Instalaciones para el backend

### NodeJS
Lo primero es tener instalado NodeJs. Para eso lo descargamos desde su pagina oficial https://nodejs.org/es

### TypeScript
La instalacion de Typescript la haremos desde NodeJs, ingresando el siguiente comando por consola:
```sh

npm i -g typescript

```
### Instalando los paquetes

Para instalar todos los paquetes necesarios, debemos ubicarnos en la ruta ../Backend y ejecutar el siguiente comando:

```sh

npm i

```

### Configurando las variables de entorno

  

Debemos setear los valores de las variables de entorno que se encuentran en los archivos ubicados en ../Backend/env/

Se deben completar correctamente en los dos archivos. Uno es para la ejecución del proyecto, y el otro ejecuta el comando para insertar usuarios. Por eso es importante que se ejecuten en puertos distintos (Los datos para la conexión en mysql son iguales en ambos).


### Generamos el código Javascript

Para convertir el código  Typescript a javascript necesitamos ejecutar el siguiente comando en la consola situados en la ruta ../Backend :  

```sh

tsc

```

### Iniciar el servicio de Backend

  

Para que el backend entre en funcionamiento debemos ejecutar el siguiente comando en la consola situados en la ruta ../Backend :

  

```sh

npm run proyect

```


## Instalaciones para el frontend

### Angular
Para el correcto funcionamiento del Frontend debemos instalar Angular a traves de un comando por consola, es necesario antes tener instalado NodeJs.

El comando a a ejecutar es el siguiente :

```sh

npm install -g @angular/cli

```

### Instalando los paquetes

Para instalar todos los paquetes necesarios necesitamos parados en la ruta ../Frontend y ejecutar el siguiente comando por consola:

```sh

npm i

```

### Configurando las variables de entorno

  

Debemos setear los valores de las variables de entorno que se encuentran en el archivo ../Frontend/src/enviroments/enviroment.ts


### Iniciar el servicio de Frontend

  

Finalmente para que el frontend entre en funcionamiento debemos ejecutar el siguiente comando en la consola situados en la ruta ../Frontend :

  

```sh

ng serve

```


## Resolución de las consignas

### Backend
#### Ejercicio 1: 
Mediante una consulta de tipo GET a la ruta dominio:puerto/posiciones?index=numero_de_indice , donde dominio y puerto hacen referencia al Backend y numero_de_indice al indice de pagina para el listado. Obtendremos un listado de las posiciones en formato JSON, ordenadas por el campo “usoFrecuente” (0 ó 1) de la tabla productos.
#### Ejercicio 2:
Situandonos en la ruta ../Backend , podemos ejecutar el siguiente comando en la consola 


```sh

npm run insertUser

```

El cual nos solicitará que ingresemos por consola un nombre y un email para la creación de un usuario. Luego hará la inserción en la base de datos y nos retornará el valor del Id de inserción.

###  Frontend

#### Ejercicio 1:
Si ingresamos a la ruta dominio:puerto en el navegador, donde dominio y puerto son los correspondientes al frontend, veremos una página que cuenta con icono de menu en la parte superior izquierda.
Al clickear el menu se nos deslizará lateralmente una pestaña con 3 opciones para navegar entre las distintas direcciones. Al clickear alguna de estas opciones se nos cerrara el menu y nos direccionara a la pagina correspondiente.

#### Ejercicio 2:
Una de las opciones del menu anteriormente mencionado es Listado de posiciones. Si clickeamos esta opción nos direccionara a la ruta domino:puerto/posiciones , donde se nos presentará un listado paginado de las posiciones.  Los datos de este listado los obtiene comsumiendo un servicio para comunicarse con el backend.


---
#### Desarrollado por Velasco Manuel.
