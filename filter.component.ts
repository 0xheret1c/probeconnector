import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';

@Component({
  selector: 'app-filter',
  templateUrl: './filter.component.html',
  styleUrls: ['./filter.component.css']
})
export class FilterComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    $(document).ready(function(){
      $("#btnfilter").click(function(){
        $("#checkbox, #zp1, #zp2, #eingabe1, #eingabe2,hr").toggle();
      });

    });
  }

}
