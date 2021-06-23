import 'package:flutter/material.dart';
import 'package:flutter_minor_project/RazorPayScreen.dart';
//import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:flutter_minor_project/main.dart';
import 'package:flutter_minor_project/global.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        color: Colors.cyan.shade200,
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                width: 200,
                margin: EdgeInsets.all(40),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/homelogo.png',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                "Welcome to Home Page $userName",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Rozor()));
                },
                child: Text(
                  'Click for Payment',
                  style: TextStyle(color: Colors.cyan.shade200),
                ),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan.shade200,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '$userName',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Order History',
                style: TextStyle(color: Colors.cyan.shade200),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.history_sharp,
                  color: Colors.cyan.shade200,
                ),
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: new Text(
                        'Log Out',
                        style: TextStyle(color: Colors.cyan.shade200),
                      ),
                      content: new Text('Are you sure you want to logout?'),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text('Yes, LogOut'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApp()));
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            ListTile(
              title: Text(
                'Help & Contact',
                style: TextStyle(color: Colors.cyan.shade200),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.help,
                  color: Colors.cyan.shade200,
                ),
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: new Text(
                        'Log Out',
                        style: TextStyle(color: Colors.cyan.shade200),
                      ),
                      content: new Text('Are you sure you want to logout?'),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text('Yes, LogOut'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApp()));
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            ListTile(
              title: Text(
                'Refer a Friend',
                style: TextStyle(color: Colors.cyan.shade200),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.person_add,
                  color: Colors.cyan.shade200,
                ),
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: new Text(
                        'Log Out',
                        style: TextStyle(color: Colors.cyan.shade200),
                      ),
                      content: new Text('Are you sure you want to logout?'),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text('Yes, LogOut'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApp()));
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            ListTile(
              title: Text(
                'Updates',
                style: TextStyle(color: Colors.cyan.shade200),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.update,
                  color: Colors.cyan.shade200,
                ),
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: new Text(
                        'Log Out',
                        style: TextStyle(color: Colors.cyan.shade200),
                      ),
                      content: new Text('Are you sure you want to logout?'),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text('Yes, LogOut'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApp()));
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.cyan.shade200),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.logout,
                  color: Colors.cyan.shade200,
                ),
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: new Text(
                        'Log Out',
                        style: TextStyle(color: Colors.cyan.shade200),
                      ),
                      content: new Text('Are you sure you want to logout?'),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text('Yes, LogOut'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApp()));
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
