
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Note extends StatefulWidget{
  @override
  _Note createState() => _Note();
}

class _Note extends State<Note>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ADD NOTE'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          iconSize: 27, onPressed: () {
          Navigator.of(context).pop();
        },
          splashColor: Colors.blue,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(

            children: <Widget>[
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child:Text(
                  'Title',
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
                  fontSize: 19
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child:Text(
                  'Subject',
                  style: TextStyle(
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      letterSpacing: 2
                  ),
                ) ,
              ),
              SizedBox(height: 20,),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 7,
                  style: TextStyle(
                      fontSize: 19
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
                      Navigator.of(context).pop();
                    },
                    elevation: 5,
                    child: Text(
                      'ADD NOTE',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    color: Colors.blue[400],
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        new BorderRadius.circular(10.0))),
              ),
              SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }

}