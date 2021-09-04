import { Request,Response } from "express";
import Posiciones from "../class/posiciones";

export = {
   
    getPosiciones : async (req : Request, res : Response) =>{
        try{let posiciones : any;
            if(req.query.index == undefined) posiciones = await Posiciones.getAll();
            else posiciones = await Posiciones.getPosiciones(Number(req.query.index) || 1);
            res.json({posiciones:posiciones})}
        catch(error){
            res.json({error:error})
        }
    }
}