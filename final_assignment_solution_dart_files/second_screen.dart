import "package:flutter/material.dart";
import 'package:flutter_app_coding_dojo/home_page.dart';


class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Route route = MaterialPageRoute(builder: (context) => HomePage());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Welcome Back',
                style: TextStyle(
                    fontSize: 28.0
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email"
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password"
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.pushReplacement(context, route);


                },
                child: Text("Login"),
              )

            ],
          ),
        )
      ),
    );
  }
}
