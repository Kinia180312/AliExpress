import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { AddOpinionComponent } from './opinions/add-opinion/add-opinion.component';
import { ViewOpinionComponent } from './opinions/view-opinion/view-opinion.component';
import { RouterModule, Routes } from '@angular/router';
import { MainComponent } from './main/main.component';


const appRoutes: Routes = [
  { path: '', component: MainComponent },
  { path: 'addOpinion', component: AddOpinionComponent },
  { path: 'viewOpinion', component: ViewOpinionComponent }

];

@NgModule({
  declarations: [
    AppComponent,
    AddOpinionComponent,
    ViewOpinionComponent,
    MainComponent
  ],
  imports: [
    BrowserModule,
    RouterModule.forRoot(
      appRoutes
      //,{ enableTracing: true } // <-- debugging purposes only
    )
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
