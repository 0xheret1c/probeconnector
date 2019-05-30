import { Component, Inject, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import * as $ from 'jquery';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit{
  title = 'Bluetooth-Mapper';
  constructor(private http: HttpClient){
  }
  ngOnInit(){
    this.http.get('http://116.203.159.127:8080/Mitglieder/').subscribe(data => {
  
    });

  }
  ngAfterViewInit(){

}
}
