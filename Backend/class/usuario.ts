import query from "../bin/mysqlConection";

export default class Usuarios {
      
    private static titulo() {
        console.clear();
        console.log('==========================');
        console.log('Insertar un nuevo usuario');
        console.log('==========================');
    }
      
    public static async insetarUsuario(){
        Usuarios.titulo();
        let nombreUsuario : any;
        let emailUsuario : any;
        Usuarios.ingresar('Nombre: ').then((nombre)=>{
            nombreUsuario = nombre
            Usuarios.ingresar('Email: ').then(async (email)=>{
                emailUsuario = email;
                console.log(nombreUsuario,emailUsuario);
                const insertID = await this.queryInsert({nombre : nombreUsuario, email : emailUsuario, habilitado : 1})
                console.log();
                console.log(`Usuario insertado con exito. Su Id es: ${insertID.insertId}.`)
                process.exit();
            })
        })    
    }
    
    private  static async ingresar(texto : string) {
        const readline = require('readline').createInterface({
            input: process.stdin,
            output: process.stdout
        });
        return new Promise((resolve,reject)=>{
            readline.question(texto, async (nombre: any) => {    
                readline.close();
                resolve(nombre)
            });          
        })
    }

    private static async queryInsert(usuario:any){
        try
        {return query(`insert into usuarios set ?`,[usuario])}
        catch(error){
            console.log(error);
        }
    }

}