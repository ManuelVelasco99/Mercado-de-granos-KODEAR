import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class PosicionesService {

  constructor(private http:HttpClient) { }

  rutaApi:string = environment.rutaBackend;
  time_out = environment.timeOutBakend;

  getPosiciones():any{
    
    return this.http.get(`${this.rutaApi}/posiciones`);
    
  }

}
