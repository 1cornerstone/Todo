
import 'package:todo/pages/Notes.dart';
import 'package:todo/pages/login.dart';
import 'package:todo/pages/setpassword.dart';
import 'package:todo/pages/signup.dart';
import 'package:todo/pages/note.dart';
import 'package:todo/pages/forgetpassword.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home': (context) => _SplashScreen(),
      '/login': (context) => Login(),
      '/signup': (context) => SignUp(),
      '/notes': (context) => Notes(),
      '/note': (context) => Note(),
      '/forgot': (context) => Forgot(),
      '/setpassword': (context) => setPassword()
    },
  ));
}

class _SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<_SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue[600],
          body: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.only(topLeft: Radius.circular(250.0))),
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(0.0 , 0.0, 0.0, 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // image add the top  ,text at, get Started btn
                  Image(
                    image: AssetImage('assets/doc.png'),
                    alignment: Alignment.bottomCenter,
                    width: 300,
                    height: 350,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'COMMA',
                    style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Arial Black',
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '..Stay organized',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 250,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/login');

                      },
                      child: Text(
                        'GET STARTED',
                        textAlign: TextAlign.center,
                      ),
                      elevation: 10,
                      textColor: Colors.white,
                      color: Colors.blue[600],
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(40.0)),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
