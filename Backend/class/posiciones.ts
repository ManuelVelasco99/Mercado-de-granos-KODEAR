import query from "../bin/mysqlConection";

export default class Posiciones {

    
    /**
    * Devuelve una lista paginada de a 10 elementos segun el indice recibido por parametro
    */
    public static async getPosiciones(pagina : number){
        let index : number = 1;
        index = index + 10 * (pagina-1);
        return query(
        `SELECT * FROM posiciones
        INNER JOIN productos on posiciones.idProducto = productos.idProducto
        INNER JOIN empresas on posiciones.idEmpresa = empresas.cuit
        ORDER BY productos.usoFrecuente desc
        LIMIT ?,10`,
        [index]
        );
    }


    /**
     * Devuelve todas las posiciones
     */
    public static getAll(){
        return query(
            `SELECT * FROM posiciones
            INNER JOIN productos on posiciones.idProducto = productos.idProducto
            INNER JOIN empresas on posiciones.idEmpresa = empresas.cuit
            ORDER BY productos.usoFrecuente desc`
            );
    }
}