import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import * as $ from 'jquery';

@Component({
  selector: 'app-suche',
  templateUrl: './suche.component.html',
  styleUrls: ['./suche.component.css']
})
export class SucheComponent implements OnInit {

  constructor(private http: HttpClient){
  }

  ngOnInit() {
    this.http.get('http://116.203.159.127:8080/Mitglieder/').subscribe(data => {
      console.log(data);

     //Namen von übermitteltert Datei in einem Array (name) speichern
      var name = [];
      var count = 0;
      while (count < data[0].Name.length-1){
       name [count] = data[count].Name;
       count++;
      }

      //Wenn auf Suche geklickt
      $("#suche").click(function(){

        //Überprüfung ob Eingabe in Liste vorhanden
        var eingabe = $('#eingabe').val();
        eingabe = eingabe.toUpperCase();
        var count2 = 0;
        var korrekt = 0;

        while (count2 < name.length){
          if(eingabe==name[count2].toUpperCase()){
           korrekt++;
          } 
          count2++;
        }

        //War die Eingabe korrekt?
        //Nicht im Array vorhanden
        if(korrekt == 0){
          alert("Die Person ist nicht in der Liste vorhanden! Hast du dich vielleicht vertippt?")
        } else{
          //Im Array vorhanden
          
        }
    });
    });
  }

}
