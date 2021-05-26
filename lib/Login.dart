import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login")
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Center(child: Image.asset("assets/logo.png")),
          
          Container(
            
            child: TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Phone Number'
              ),
            )
          ),
          
          Container(
            child: TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Password',
              ),
              autofocus: false,
              obscureText: true,
            )
          ),

          Container(
            padding: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () { },
              child: Text('Log In'),
            ),
          ),

          
          Container(
            padding: EdgeInsets.only(top: 20),
            child:TextButton(
              style: TextButton.styleFrom(
                primary: Colors.grey,
              ),
              onPressed: () { },
              child: Text('Forgot Password? No yawa. Tap me'),
            )
          ),
          
          Container(
            padding: EdgeInsets.only(top: 20),
            child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[200], // background
                onPrimary: Colors.grey, // foreground
              ),
              onPressed: () { },
              child: Text('No Account? Sign Up'),
            )  
          )

        ],
      ),
    );
  }
}