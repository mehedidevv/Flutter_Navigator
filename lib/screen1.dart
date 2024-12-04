import 'package:flutter/material.dart';
import 'screen2.dart';
class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //AppBar
        appBar: AppBar(title: Text("Screen 1"),
          backgroundColor: Colors.teal,
        ),

        backgroundColor: Colors.green,
        //Body
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(onPressed: () {
                //Add Navigator Route
                Navigator.pushNamed(context, '/second');
                //Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen2()));
              }, child: Text('Go To Screen 2')),
            ),

            Align(
              alignment: Alignment.center,
              child: ElevatedButton(onPressed: () {
                //Add Navigator Route
                Navigator.pop(context);
              }, child: Text('Go Back Screen ')),
            ),
          ],
        ),
      ),
    );
  }
}
