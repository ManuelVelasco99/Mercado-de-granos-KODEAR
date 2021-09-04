import { Router } from "express";
import posiciones from "../controllers/posiciones";

const posicionesRoutes = Router();

posicionesRoutes.get('/',posiciones.getPosiciones);

export default posicionesRoutes;