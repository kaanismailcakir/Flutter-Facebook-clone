import 'package:flutter/material.dart';
import 'package:not_alma/feedbox.dart';
import 'package:not_alma/storytile.dart';
import 'actionbtn.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color bgColor = Color(0xFF1a1a1a);
  Color mainBlac = Color(0xFF262626);
  Color fbBlue = Color(0xFF2D88FF);
  Color mainGrey = Color(0xFF505050);


  List<String> avatarUrl = [
   "https://images.unsplash.com/photo-1621871305482-f6ebb7238916?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE0fFJfRnluLUd3dGx3fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"
   "https://images.unsplash.com/photo-1622007102208-28bbbd2b115b?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEyfHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"
   "https://images.unsplash.com/photo-1620757482070-4994c580db7a?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI3fHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"
   "https://images.unsplash.com/photo-1622010652045-9ec0bea7a4a3?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDh8Ul9GeW4tR3d0bHd8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"
  ];

  List<String>storyUrl = [
    "https://images.unsplash.com/photo-1621402705959-fe90b5c9b42c?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ0fHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"
    "https://images.unsplash.com/photo-1621123073224-c10821c4224e?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUwfHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"
    "https://images.unsplash.com/photo-1602042982910-0ff463f48d9f?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE1MXxxUFlzRHp2Sk9ZY3x8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"
    "https://images.unsplash.com/photo-1620429268173-7a81e70187ee?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE2MnxxUFlzRHp2Sk9ZY3x8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: mainBlac,
        title: Text("Facebook",style: TextStyle(color: fbBlue),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},

          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){},
          )
        ],
        
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color:mainBlac,
                  borderRadius:BorderRadius.circular(12.0),
                ),
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius:25.0,
                          backgroundImage:NetworkImage("https://images.unsplash.com/photo-1622010652045-9ec0bea7a4a3?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDh8Ul9GeW4tR3d0bHd8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60")
                        ),
                        SizedBox(width:10.0),
                        Expanded(
                        child:TextField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 25.0),
                            hintText: "Post something...",
                            filled: true,
                            fillColor: mainGrey,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            )
                          ),
                        )
                        ),
                      ],
                  
                      ),
                      SizedBox(height:5.0,),
                      Divider(
                        color:mainGrey ,
                      thickness: 1.5,
                      ),
                      Row(
                        children: [
                          actionButton(Icons.live_tv,"Live",Color(0xFFf23E5C)),
                          actionButton(Icons.image,"Resim",Color(0xFF58C472)),
                          actionButton(Icons.insert_emoticon,"Aktevite",Color(0xFFF8C03E)),
                        ],
                      )
                  ],
                ),
                ),
                
              ),
              SizedBox(height:10.0),
              Container(
                height: 160.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    storyTile("https://images.unsplash.com/photo-1622007102208-28bbbd2b115b?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEyfHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60",  "https://images.unsplash.com/photo-1621123073224-c10821c4224e?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUwfHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60", "Ling Chang"),
                    storyTile(avatarUrl[0], storyUrl[0], "Ling Chang"),
                    storyTile("https://images.unsplash.com/photo-1620757482070-4994c580db7a?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI3fHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60", "https://images.unsplash.com/photo-1602042982910-0ff463f48d9f?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE1MXxxUFlzRHp2Sk9ZY3x8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60", "Renkler"),
                     storyTile("https://images.unsplash.com/photo-1620757482070-4994c580db7a?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI3fHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60", "https://images.unsplash.com/photo-1620429268173-7a81e70187ee?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE2MnxxUFlzRHp2Sk9ZY3x8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60", "Büyüleyici"),
                  ],
                ),
              ),
              SizedBox(height:20.0),
              feedBox("https://images.unsplash.com/photo-1622010652045-9ec0bea7a4a3?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDh8Ul9GeW4tR3d0bHd8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60", "Kaan İsmail Çakır", "25 dk", "Harikaydı", ""),
               feedBox("https://images.unsplash.com/photo-1621123073224-c10821c4224e?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUwfHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60", "Elom Mask", "5 dk önce", "Harikaydı", "https://images.unsplash.com/photo-1620429268173-7a81e70187ee?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE2MnxxUFlzRHp2Sk9ZY3x8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"),
               feedBox("https://images.unsplash.com/photo-1621871305482-f6ebb7238916?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE0fFJfRnluLUd3dGx3fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60", "Dany ", "1 saat önce", "Desenler", "https://images.unsplash.com/photo-1621402705959-fe90b5c9b42c?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ0fHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"),
               feedBox("https://images.unsplash.com/photo-1622010652045-9ec0bea7a4a3?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDh8Ul9GeW4tR3d0bHd8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60", "İsmet Büyük", "5 gün önce", "Vaooooo", "https://images.unsplash.com/photo-1621123073224-c10821c4224e?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUwfHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"),
            ],
            ),
        ),
      ) 
    );
  }
}
