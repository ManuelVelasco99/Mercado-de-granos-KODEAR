import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { PosicionesRoutingModule } from './posiciones-routing.module';
import { PosicionesComponent } from './posiciones.component';

import { MatTableDataSource } from '@angular/material/table';
import { MatIconModule } from '@angular/material/icon';
import {MatTableModule} from '@angular/material/table'
import {MatPaginatorModule} from '@angular/material/paginator';


@NgModule({
  declarations: [
    PosicionesComponent
  ],
  imports: [
    CommonModule,
    PosicionesRoutingModule,

    MatIconModule,
    MatTableModule,
    MatPaginatorModule
  ]
})
export class PosicionesModule { }
