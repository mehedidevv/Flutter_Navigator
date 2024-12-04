import 'package:flutter/material.dart';
import 'package:flutter_navigator/screen1.dart';
import 'package:flutter_navigator/screen2.dart';

class Screen0 extends StatelessWidget {
  const Screen0({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,

        appBar: AppBar(title: Text('Screen 0'),
          backgroundColor: Colors.teal,
        ),

        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(onPressed: () {
                //Add Navigator Route
                Navigator.pushNamed(context, '/first');
               // Navigator.push(context, MaterialPageRoute(builder: (context) => Screen1()));
              }, child: Text('Go To Screen 1')),
            ),

            ElevatedButton(onPressed: () {
              //Add Navigator Route
              Navigator.pushNamed(context, '/second');
             // Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));
            }, child: Text('Go To Screen 2')),
          ],
        ),
      ),
    );
  }
}
