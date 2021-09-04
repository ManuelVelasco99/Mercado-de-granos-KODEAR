import { AfterViewInit, Component, OnInit, ViewChild } from '@angular/core';
import { MatPaginator } from '@angular/material/paginator';
import { MatTableDataSource } from '@angular/material/table';
import { PosicionesService } from 'src/app/services/posiciones.service';

@Component({
  selector: 'app-posiciones',
  templateUrl: './posiciones.component.html',
  styleUrls: ['./posiciones.component.css']
})
export class PosicionesComponent implements AfterViewInit {
  
  @ViewChild(MatPaginator)
  paginator!: MatPaginator;
  constructor(private posicionesService : PosicionesService) { }

  ngAfterViewInit() {
    this.dataSource.paginator = this.paginator;
    
  }
  ngOnInit(): void {
    
    this.posicionesService.getPosiciones().subscribe((databackend:any)=>{
      console.log(databackend)
      this.dataSource.data = databackend.posiciones;
    });
  }


  resultsLength = 25;
  ELEMENT_DATA!: any[];
  dataSource = new MatTableDataSource<any>(this.ELEMENT_DATA);
  displayedColumns: string[] = ['empresa','producto','fechadisp','precio','moneda'];

}
