import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState  createState() => _NotesState ();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:Text(
          'C O M M A'
        ),
        centerTitle: false,
        titleSpacing: 15.0,
        backgroundColor: Colors.purple,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            iconSize: 35.0,
            padding: EdgeInsets.all(10.0),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route)=> false);
            },
          )
        ],
      ),
    body: Container(
      padding: EdgeInsets.all(10),
      child: Center(
          child:  (true)? (ListView(
                children: <Widget>[ _list('Flutter ','22/03/2020'),
                  _list('Bitcoin ','22/03/2020'),
                  _list('Python','22/03/2020'),
                  _list('Java','22/03/2020'),
                  _list('NodeJS','22/03/2020'),
                  _list('DOCKER','22/03/2020'),],
              )):(Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/nodata.png'),
                    width: 200,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      'No TODO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Arial Black',
                          fontWeight: FontWeight.bold)
                  )
                ],
              ))
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        Navigator.of(context).pushNamed('/note');
      },
      child: Icon(
        Icons.add
      ),
      elevation: 6,
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}


Widget _list(String title,String date){
  return Card(
    margin: const EdgeInsets.all(5.0),
    elevation: 6,
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Flexible(
              flex: 4,
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '$title',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Monospace',
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'date created: $date',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'monospace',
                      ),
                    ),
                  )

                ],
              )
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: (){},
              alignment: Alignment.center,
              color: Colors.blue[400],
              icon: Icon(
                  Icons.delete
              ),
            ),
          )
        ],
      ),
    ),
  );
}



