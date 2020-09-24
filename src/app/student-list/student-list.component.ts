import { environment } from './../../environments/environment';
import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-student-list',
  templateUrl: './student-list.component.html',
  styleUrls: ['./student-list.component.scss']
})
export class StudentListComponent implements OnInit {
  students
  constructor(
    private http:HttpClient
  ) { }

  ngOnInit(): void {
    this.getList()
  }
  getList(){
    this.students = this.http.get(`${environment.apiUrl}/students/`)
  }
}
