import 'package:flutter/material.dart';
import 'package:todo/widget/custom_dialog.dart';

class Forgot extends StatefulWidget{
  @override
  _Forgot createState() => _Forgot();
}

class _Forgot extends State<Forgot>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back
          ), onPressed: () {
          Navigator.of(context).pop();
        },
        ),
        backgroundColor: Colors.blue[600],
        title: Text(
          'Forgot Password'
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 70.0, left: 20.0,right: 20.0),
        child: Column(
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
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child:Text(
                'Enter your email',
                style: TextStyle(
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 2
                ),
              ) ,
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: false,
              style: TextStyle(
                  fontSize: 16
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  
                  showDialog(context: context,builder: (context) => CustomDialog());
                },
                child: Text(
                  'SEND',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
                elevation: 10,
                textColor: Colors.white,
                color: Colors.blue[600],
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(40.0)),
              ),
            ),

//           Container(
//             height: 40,
//             decoration :BoxDecoration(
//               borderRadius: BorderRadius.circular(3)
//             ) ,
//             child:  PinPut(
//               eachFieldWidth: 65,
//               eachFieldHeight: 65,
//               fieldsCount: 4,
//               eachFieldPadding: EdgeInsets.all(5),
//               selectedFieldDecoration: BoxDecoration(
//                   border: Border.all(color: Colors.blue[600])
//               ),
//               followingFieldDecoration: BoxDecoration(
//                   border: Border.all(color: Colors.blue[400])
//               ),
//
//
//             ),
//           )
          ],
        ),
      ),
    );
  }
}


