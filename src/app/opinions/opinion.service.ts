import { Injectable } from '@angular/core';
import {Opinion} from "./opinion.model";
import {Observable} from "rxjs/Observable";
import {Http, RequestOptions, Headers} from "@angular/http";
import 'rxjs';

@Injectable()
export class OpinionService {
  private apiUrl = "http://localhost/ali-api/";
  // private apiUrl = "http://std.usermd.net/api/";
  constructor(private http : Http) { }

  getOpinions() : Observable<Opinion[]> {
    return this.http.get(this.apiUrl)
      .map((res) => res.json())
  }

  // getCar(id : number) : Observable<Car> {
  //   return this.http.get(this.apiUrl + `/${id}`)
  //     .map((res) => res.json())
  // }

  // addCar(data) : Observable<Car> {
  //   return this.http.post(this.apiUrl, data)
  //     .map((res) => res.json())
  // }

  // updateCar(id : number, data) : Observable<Car> {
  //   return this.http.put(this.apiUrl + `/${id}`, data)
  //     .map((res) => res.json())
  // }

  // removeCar(id : number) : Observable<Car> {
  //   return this.http.delete(this.apiUrl + `/${id}`)
  //     .map((res) => res.json())
  // }
}