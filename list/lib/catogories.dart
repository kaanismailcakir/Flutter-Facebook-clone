import 'package:flutter/material.dart';
import 'package:list/category.dart';
import 'package:list/components/headers.dart';
import 'components/bottomNavigation.dart';
import 'components/headers.dart';

class CatogoriesPage extends StatelessWidget {
final List<String>catogories = [
  "All",
  "Computers",
  "Accessories",
  "Smartphone",
  "Smart Object",
  "Speakers",
  "household appliances",
  "cleaning products",
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header("Catogories", context),
                    SizedBox(height:16),
                   
                  Expanded(
                    child: ListView(
                      children: catogories
                      .map((String title) => buildCatogori(title,context))
                      .toList()),
                  ), 
                  ],
                )
              ),
              buttonNavigationBar()
            ]
          ),
        ),
    );
  }
}


Widget buildCatogori(String title,context){
  return
  GestureDetector(
    onTap: (){
      Navigator.push(context,MaterialPageRoute(builder: (context){
      return CatogoryPage();
      }));
    } ,
      child: Container(
                        padding: EdgeInsets.all(24),
                        margin: EdgeInsets.only(bottom:16),
                        width: double.infinity,
                        decoration:BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.circular(6),
                          boxShadow:[
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),blurRadius: 4,offset: Offset(0,4)
                          )
                          ],
                        ),
                        child:Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black,))
                      ),
  );
}