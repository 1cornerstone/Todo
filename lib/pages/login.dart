import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();

}

class _LoginState extends State<Login> {


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
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Flexible(
                          child: ListTileTheme(
                        contentPadding: EdgeInsets.zero,
                        child: CheckboxListTile(
                          value: false,
                          title: Text('Remember me'),
                          onChanged: (value) {},
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      )),
                      SizedBox(width: 1),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed('/forgot');
                          },
                          child: Text('Forgot password?',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.purple,
                              )),
                        )
                      )
                    ],
                  ),
                  SizedBox(
                    width: 250,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).popAndPushNamed('/notes');

                      },
                      child: Text(
                        'LOGIN',
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
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'New user ?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 120,
                        child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/signup');
                            },
                            elevation: 5,
                            child: Text(
                              'Register',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            color: Colors.blue[400],
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0))),
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
