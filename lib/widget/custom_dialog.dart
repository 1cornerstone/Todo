import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class CustomDialog  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      backgroundColor: Colors.transparent,
      elevation: 4.0,
      insetAnimationDuration: Duration(
        milliseconds: 300
      ),
      child: _build(context)
    );
  }

  _build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(30.0),
      height: 350,
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(10)
              
      ),
      child: Column(
        children: <Widget>[

          Text(
            'COMMA',
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'Arial Black',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 18,
          ),
          Text(
              'Enter you verification code:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0

            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 30,),
          PinEntryTextField(
            showFieldAsBox: true,
            fields: 5,
            onSubmit: (){},
          ),
          SizedBox(height: 30,),
          SizedBox(
            width: 200,
            height: 50,
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/setpassword');
              },
              child: Text(
                'CONFIRM',
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
        ],
      ),
    );
  }
}
