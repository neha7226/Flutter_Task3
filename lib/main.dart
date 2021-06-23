import 'package:flutter/material.dart';

import 'package:flutter_minor_project/LoginScreen.dart';
import 'package:flutter_minor_project/RegisterScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minor_Project',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.cyan.shade200,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                width: 200,
                margin: EdgeInsets.all(40),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Image.asset(
                    'assets/images/mainlogo.png',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 1000,
                    height: 50,
                    margin: EdgeInsets.all(10),
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(_createRouteLogin());
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "LOGIN",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.cyan.shade200),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 1000,
                      height: 50,
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(_createRouteRegister());
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(30.0))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "REGISTER",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.cyan.shade200),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRouteLogin() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Slogin(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRouteRegister() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SRegister(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
