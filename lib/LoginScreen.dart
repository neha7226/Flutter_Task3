import 'package:flutter/material.dart';
import 'package:flutter_minor_project/HomeScreen.dart';

class Slogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LOGIN(),
    );
  }
}

class LOGIN extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<LOGIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.cyan.shade200),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                //width: 200,
                margin: EdgeInsets.all(40),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/logologin.png',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 1000,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.cyan.shade200,
                      ),
                      hintText: 'Email : Ex. 7226neha@gmail.com',
                      hintStyle: TextStyle(color: Colors.cyan.shade200),
                      filled: true,
                      fillColor: Colors.white,
                      //icon: Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide:
                            BorderSide(color: Colors.cyan.shade200, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.cyan.shade200),
                      )),
                ),
              ),
              Container(
                width: 1000,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  //autocorrect: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.cyan.shade200,
                      ),
                      hintText: 'Password',
                      suffixText: '*',
                      hintStyle: TextStyle(color: Colors.cyan.shade200),
                      filled: true,
                      fillColor: Colors.white,
                      //icon: Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide:
                            BorderSide(color: Colors.cyan.shade200, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.cyan.shade200),
                      )),
                ),
              ),
              Container(
                width: 1000,
                height: 50,
                margin: EdgeInsets.all(50),
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.cyan.shade200,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
