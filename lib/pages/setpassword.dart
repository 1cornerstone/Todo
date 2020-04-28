import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class setPassword extends StatefulWidget {
  @override
  _setPasswordState createState() => _setPasswordState();
}

class _setPasswordState extends State<setPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[600],
      appBar: AppBar(
        title: Text('Set Password'),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back
          ), onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route)=> false);
        },
        ),
      ),
        body: Container(
            decoration: BoxDecoration(
                color: Colors.white,

            ),
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                          labelText: 'New Password',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.0))),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.0))),

                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 250,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route)=> false);
                      },
                      child: Text(
                        'Change',
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
                    height: 20,
                  )

                ],
              ),
            )
        ),
    );
  }
}
