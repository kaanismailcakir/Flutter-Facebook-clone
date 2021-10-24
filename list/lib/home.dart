
import 'package:flutter/material.dart';
import 'package:list/catogories.dart';
import 'components/bottomNavigation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView(
                 
                  children:[
                    //Başlık
                    buildBaslik(),


                    //Banner
                   buildBanner(),
                    //Butonlar
                    Padding(
                      padding: EdgeInsets.only(top:48),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildButton(text: "Catogories", icon:Icons.menu,widget: CatogoriesPage(),context: context),
                          buildButton(text: "Favorites", icon:Icons.star_border),
                          buildButton(text: "Gest", icon:Icons.card_giftcard),
                          buildButton(text: "Best selling", icon:Icons.people),
                        ],
                        ),
                        
                    ),
                    SizedBox(height:40),
                    //Sales
                    Text("Sales",style:
                    
                     TextStyle(
                       
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                       fontSize: 24)
                       ),
                       SizedBox(height:16),




                       Row(
                         children: [
                           buildSalesItem(
                             text:"İphone 12 Pro Max" , 
                             discoun: "-50%",
                             screenWidth: screenWidth,
                             photoUrl: "assets/images/12.jpg",      
                             ),
                             buildSalesItem(
                                text:"Samsung A51" , 
                             discoun: "-20%",
                             screenWidth: screenWidth,
                             photoUrl: "assets/images/samsung.jpg",  
                             )
                         ],
                       ), 

                        Row(
                         children: [
                           buildSalesItem(
                             text:"Mi 10TPro" , 
                             discoun: "-70%",
                             screenWidth: screenWidth,
                             photoUrl: "assets/images/mi.jpg",      
                             ),
                             buildSalesItem(
                                text:"Huawei P40 Pro" , 
                             discoun: "-10%",
                             screenWidth: screenWidth,
                             photoUrl: "assets/images/p40.jpg",  
                             )
                         ],
                       ),          
                  ]
              ),
        ),
        buttonNavigationBar()
            ],
            ),
          ),
      );
  }
}






Widget buildBaslik(){
  return 
  Padding(
    padding: const EdgeInsets.only(top: 24.0),
     child: Text(
     "Home",style:TextStyle(
     fontSize:32,
     color:Color(0xFF0A1034),
     fontWeight:FontWeight.bold
    ),
  ),
);
}

Widget buildBanner(){
  return
   Padding(
                padding:EdgeInsets.only(top: 24.0),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left:24,right:36,top:15,bottom:18 ),
                  decoration: BoxDecoration(
                    color: Color(0xFF0001FC)
                    ,borderRadius: BorderRadius.circular(6)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        
                        children: [
                          Text("Bose Home Speaker",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                            ),
                          ),
                           Text("USD 279",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height:4)
                        ],
                      ),
                      Image.asset("assets/images/speaker.png",height: 90,width: 100,),
                    ],
                  ),
                ),
                );
}

Widget buildButton({
  @required String text,
  @required IconData icon,
  Widget widget,
  BuildContext context,

  }) {
  return GestureDetector(
    onTap:(){
      Navigator.push(context,MaterialPageRoute(builder: (context){
      return widget;
      }));
    } ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children:[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 19,vertical:  22),
                decoration:BoxDecoration(
                  shape:BoxShape.circle,
                  color:Color(0xFFE0ECF8)
                ),
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: 18,
                ),
              ),
              SizedBox(height:8),
              Text(
                text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500
                ),
                ),
            ]
          )
        ],
      ),
  );
}

Widget buildSalesItem({
  @required String text,
  @required String photoUrl,
  @required String discoun,
  @required double screenWidth 
  }){
  return 
  Container(
    
    width:( screenWidth -60)*0.5,
                     padding:EdgeInsets.only(top: 12,left: 12,right: 12,bottom: 21),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:[
                         Container(
                           
                           padding: EdgeInsets.all(4),
                           decoration:
                           BoxDecoration(
                             borderRadius:BorderRadius.circular(2),
                             color:Color(0xFFE0ECF8)
                           ),
                           child: Text(discoun,style: TextStyle(color: Color(0xFF1F53E4),fontSize: 12)
                           ,),
                         ),
                          SizedBox(height:22),
                        Image.asset(photoUrl,),
                         SizedBox(height:22),
                        Center(child: Text(text,style:TextStyle(fontSize: 18,color: Color(0xFF0A1034)) ,)),
                       ]
                     ),
                   );

}
      