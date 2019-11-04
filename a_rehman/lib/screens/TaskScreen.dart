import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipPath(
          child : Container(
            height: 350,

            decoration: BoxDecoration(
                gradient: RadialGradient(colors: [Colors.pinkAccent, Colors.pink[800]], radius: 1)
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.only(top: 20),

                  child : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween
                    ,children: <Widget>[
                    IconButton(
                      icon : Icon(Icons.menu, color: Colors.white70,),
                      onPressed: (){},
                    ),

                    Text("Todays Task", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70, fontSize: 18),),

                    IconButton(
                      icon : Icon(Icons.search, color: Colors.white70),
                      onPressed: (){},
                    ),


                  ],
                  )
                ),


                Padding(
                  padding: EdgeInsets.only(top: 10, left: 32),
                  child : SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/images/girl.png", fit: BoxFit.contain,),
                  )
                ),


                Padding(
                  padding: EdgeInsets.only(top: 15, left: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[
                      Text("Hello, Yashra", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70, fontSize: 26),),
                      SizedBox(height: 10,),
                      Text("Look like feels good", style: TextStyle(color: Colors.white70, fontSize: 16),),
                      Text("You have 6 tasks today", style: TextStyle(color: Colors.white70, fontSize: 16),),
                    ],
                  ),
                )




              ],
            ),

          ),

          clipper: MyWavyClipper(),
        ),



        Padding(
          padding: EdgeInsets.only(left: 32, bottom: 20),
          child: Text("November 4, 2019 Monday", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70, fontSize: 16),),
        ),


        Container(
          width: MediaQuery.of(context).size.width,

          height: 200,

          padding: EdgeInsets.only(left: 32),

          child: ListView.builder(
              itemBuilder: (BuildContext context, int index){
                return Stack(
                  overflow: Overflow.visible,
                  
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 20, top: 20),
                      child: Container(
                        padding: EdgeInsets.all(20),

                        width: 200,

                        decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.only(topLeft: Radius.circular(40))),

                        child: Column(
                          children: <Widget>[
                            Row(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: <Widget>[
                                Icon(Icons.assignment_turned_in, color: Colors.grey[800],),
                                SizedBox(width: 16,)
                                ,Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Task no $index", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pinkAccent, fontSize: 22),),
                                    Text("02 : 35 PM", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 16),),
                                  ],
                                )
                              ],


                            ),

                            SizedBox(height: 12,)

                            ,Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh Lorem",
                              style: TextStyle(color: Colors.grey[800], fontSize: 14),),


                          ],
                        ),
                      ),
                    ),
                    
                    Positioned(
                      right: 0,
                      top: 0,
                      
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.orange[700],
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Center(
                          child: Icon(Icons.border_color, color: Colors.white,),
                        ),
                      ),
                    ),
                  ],
                );
              },

              itemCount: 6,

              scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}


class MyWavyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();

    path.lineTo(0, size.height-80);

    path.quadraticBezierTo(0.3 * size.width, size.height, 0.68*size.width, size.height -80);

    path.lineTo(0.68 * size.width, size.height-80);


    path.quadraticBezierTo(0.8416 * size.width, size.height -120 , size.width, size.height -80);

    path.lineTo(size.width, size.height-80);

    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}

