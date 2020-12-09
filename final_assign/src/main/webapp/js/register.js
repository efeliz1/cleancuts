/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var haveSubmitted=false;

 function FormSubmited()
   {
    
    if(haveSubmitted){
        return false;
    }
    haveSubmitted=true;
    return true;    //we want the first click to occur.
   }