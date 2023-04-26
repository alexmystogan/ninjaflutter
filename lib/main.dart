import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),

));
class NinjaCard extends StatefulWidget {


  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjalevel = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja IdCard Appal'),
        backgroundColor: Colors.grey[850],
        elevation:0.0,
      ),
      floatingActionButton: Wrap( //will break to another line on overflow
        direction: Axis.vertical,
        spacing: 10,
        alignment: WrapAlignment.spaceBetween,
        //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              margin:EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: (){
                  setState(() {
                    if (ninjalevel<=9){
                      ninjalevel+=1;
                    }
                    else {
                      print('Do Nothing');
                    }
                  });
                  //action code for button 1
                },
                child: Icon(Icons.plus_one_outlined),
              )
          ), //button first

          Container(
              margin:EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: (){
                  setState(() {
                    if (ninjalevel>0){
                      ninjalevel -=1;
                    }
                    else {
                      print('Do Nothing');
                    }
                  });
                  //action code for button 2
                },
                backgroundColor: Colors.deepPurpleAccent,
                child: Icon(Icons.exposure_minus_1_outlined),
              )
          ), // button second

          Container(
              margin:EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: (){
                  setState(() {
                    if (ninjalevel>0){
                     ninjalevel = 0;
                    }
                    else {
                      print('Do Nothing');
                    }
                  });
                  //action code for button 3
                },
                backgroundColor: Colors.deepOrangeAccent,
                child: Icon(Icons.lock_reset_outlined),
              )
          ), // button third

          // Add more buttons here
        ],),





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
              '$ninjalevel',
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
                  ),
                ),



              ]
            ),
          ]
        )
      )
    );
  }
}

