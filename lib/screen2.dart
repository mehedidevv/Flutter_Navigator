import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //AppBar
        appBar: AppBar(title: Text("Screen 2"),
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
                Navigator.pop(context);
              }, child: Text('Go Back Screen ')),
            ),
          ],
        ),
      ),
    );
  }
}
