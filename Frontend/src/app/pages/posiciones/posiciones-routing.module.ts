import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PosicionesComponent } from './posiciones.component';

const routes: Routes = [
  {
    path:"", 
    component: PosicionesComponent
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class PosicionesRoutingModule { }
