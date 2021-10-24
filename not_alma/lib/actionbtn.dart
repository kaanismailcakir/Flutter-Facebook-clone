import 'package:flutter/material.dart';
 

Widget actionButton(
  IconData icon,
  String actionTitle,
  Color IconColor
){
  return Expanded(
    child:FlatButton.icon(
      onPressed: (){},
      icon:Icon(icon ,color: IconColor,) ,
      label:Text(actionTitle,style: TextStyle(color: Colors.white),) ,
    ) 
    );
}