import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            // decoration: TextDecoration.underline,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
        leading: Icon(
          Icons.chevron_left,
          size: 32,
        ),
        // actions: [
        //   Icon(Icons.chevron_right)
        // ],
        
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        color: Color.fromRGBO(19, 19, 19, 1.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(38, 38, 38, 1.0),
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(38, 38, 38, 1.0),
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              FlatButton(
                onPressed: () {
                  print("Sign in button tapped");
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: 20),
              FlatButton(
                onPressed: () {
                  print("Recover password button tapped");
                },
                child: Text(
                  "Recover Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
