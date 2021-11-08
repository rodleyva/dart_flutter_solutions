import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double appBarHeight = MediaQuery.of(context).padding.top + kToolbarHeight;
    double boxHeight = screenHeight - appBarHeight;

    return Scaffold(
      appBar: AppBar(
        title: Text("Layout App"),

      ),
      body: Container(
          child: Rainbow(boxHeight: boxHeight)
      ),
    );
  }
}

class Rainbow extends StatelessWidget {
  const Rainbow({
    Key? key,
    required this.boxHeight,
  }) : super(key: key);

  final double boxHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.red,
          child: SizedBox(
            height: boxHeight/6 ,
          ),
        ),
        Container(
          color: Colors.orange,
          child: SizedBox(
            height: boxHeight/6,
          ),
        ),
        Container(
          color: Colors.yellow,
          child: SizedBox(
            height: boxHeight/6,
          ),
        ),
        Container(
          color: Colors.green,
          child: SizedBox(
            height: boxHeight/6,
          ),
        ),Container(
          color: Colors.blue,
          child: SizedBox(
            height: boxHeight/6,
          ),
        ),Container(
          color: Colors.purple,
          child: SizedBox(
            height: boxHeight/6,
          ),
        ),
      ],
    );
  }
}