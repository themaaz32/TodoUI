import 'package:flutter/material.dart';

import 'screens/TaskScreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body : TaskScreen(),
        bottomNavigationBar: Container(
          height: 70,

          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20),

                child: ClipPath(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(gradient: RadialGradient(colors: [Colors.pinkAccent, Colors.pink[600]], radius: 1)),
                  ),

                  clipper: MyTriangularClipper(),
                ),
              ),

              Positioned(
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.orange[700],
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    border: Border.all(width: 8, color: Colors.grey[900], style: BorderStyle.solid)
                  ),
                  child: Center(
                    child: Icon(Icons.add, color: Colors.white,),
                  ),
                ),

                top: 0,
                left: 170,
              )
            ],
          ),
        )
      )
    );
  }
}


class MyTriangularClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();

    path.lineTo(0, size.height);

    path.lineTo(size.width/2, 0);

    path.lineTo(size.width, size.height);

    path.lineTo(0, size.height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}