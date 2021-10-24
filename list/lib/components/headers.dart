import 'package:flutter/material.dart';
Widget header(String title,context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height:29),

    
  
   GestureDetector( 
     onTap:(){ Navigator.pop(context);},
     child:Icon(Icons.arrow_back,color: Colors.black,size: 28,),),
  
  SizedBox(height: 24,),
      Text(title,style: TextStyle(
        color:Colors.black,
          fontWeight:FontWeight.bold,
            fontSize: 24),
      ),
         ],
      );
    }