import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),

));
class NinjaCard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja Id Card Appl'),
        backgroundColor: Colors.grey[850],
        elevation:0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Center(
              child: CircleAvatar(
          backgroundImage: AssetImage('assets/2.jpg'),
                radius:40.0,

              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            SizedBox(height:20.0),
            Text(
              'NAMA',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
            ),
           SizedBox(height:5.0),

            Text(
              'Alex Mystogan, AM',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Level : ',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height:5.0),

            Text(
              '109',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:20.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email_sharp,
                  color: Colors.red,
                ),
                SizedBox(width:2.0),
                Text(
                  'RimanQQ@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing:2.0,
                  )
                )



              ]
            ),
          ]
        )
      )
    );
  }
}

