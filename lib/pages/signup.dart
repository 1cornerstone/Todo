import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon(
                          Icons.arrow_back,
                        color: Colors.white,
                      ),
                      iconSize: 30, onPressed: () {
                        Navigator.of(context).pop();
                    },
                      splashColor: Colors.blue,
                    ),
                  )
                ),
                Flexible(
                  flex: 5,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/login.png'),
                          alignment: Alignment.bottomCenter,
                          width: 200,
                          height: 100,
                          filterQuality: FilterQuality.low,
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
                          height: 20,
                        ),
                        TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.account_circle),
                                border: OutlineInputBorder(),
                                labelText: 'Name',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18.0))),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(),
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18.0))),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.account_circle),
                                border: OutlineInputBorder(),
                                labelText: 'Username',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18.0))),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.lock),
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18.0))),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 250,
                          height: 50,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                            elevation: 7,
                            textColor: Colors.white,
                            color: Colors.blue[600],
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(40.0)),
                          ),
                        ),

                      ],
                    ),
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}
