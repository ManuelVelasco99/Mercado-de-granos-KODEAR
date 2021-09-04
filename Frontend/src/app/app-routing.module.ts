import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { InicioModule } from 'src/app/pages/inicio/inicio.module';
import { UsuariosModule } from 'src/app/pages/usuarios/usuarios.module';
import { PosicionesModule } from './pages/posiciones/posiciones.module';

const routes: Routes = [
  {
    path:"posiciones",
    loadChildren: ()=> import('src/app/pages/posiciones/posiciones.module').then(m=>PosicionesModule)
  },
  {
    path:"usuarios",
    loadChildren: ()=> import('src/app/pages/usuarios/usuarios.module').then(m=>UsuariosModule)
  },
  {
    path:"inicio",
    loadChildren: ()=> import('src/app/pages/inicio/inicio.module').then(m=>InicioModule)
  }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
