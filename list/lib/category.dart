import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/headers.dart';

class CatogoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                  header("Laptop", context),
                  //içerikler
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:12,vertical:16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                        color: Colors.black.withOpacity(0.08)
                        ,blurRadius: 24,offset:Offset(0,16)
                          ),
                        ],
                        
                      ),
                      child: Column(
                        children: [
                          SizedBox(height:16),
                          Image.asset("assert/images/lenovo.jpg",height: 20,width: 20,),
                          Expanded(
                            child: Container(),
                          ),       
                           Column(children: [
                            Text("Lenovo"),
                            Text("55555")
                          ],)
                          
                        ],
                      ),
                    ),
                  ]
                ),
              ),
            ]
          ),
        ),
    );
  }
}