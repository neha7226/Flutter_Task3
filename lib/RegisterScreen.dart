import 'package:flutter/material.dart';
import 'package:flutter_minor_project/global.dart';
import 'package:flutter_minor_project/HomeScreen.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class SRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: REGISTER(),
    );
  }
}

class REGISTER extends StatefulWidget {
  @override
  _Register createState() => _Register();
}

class _Register extends State<REGISTER> {
  TextEditingController displayName = new TextEditingController();
  TextEditingController emailId = new TextEditingController();
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
                margin: EdgeInsets.all(40),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/logoreg.png',
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
                  controller: displayName,
                  autocorrect: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.cyan.shade200,
                      ),
                      hintText: 'Name : Ex. Neha A',
                      hintStyle: TextStyle(color: Colors.cyan.shade200),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide:
                            BorderSide(color: Colors.cyan.shade200, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                          color: Colors.cyan.shade200,
                        ),
                      )),
                ),
              ),
              Container(
                width: 1000,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: emailId,
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
                width: 900,
                height: 50,
                margin: EdgeInsets.all(50),
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      userName = displayName.text;
                      userEmail = emailId.text;
                      Navigator.of(context).push(_createRouteHome());
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.cyan.shade200,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "CREATE ACCOUNT",
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

Route _createRouteHome() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
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
