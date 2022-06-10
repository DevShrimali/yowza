import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          title: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 5.0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('welcome'),
                Text(
                  'DEV',
                  style: TextStyle(
                      color: Colors.grey, fontSize: 26, letterSpacing: 1),
                ),
              ],
            ),
          ),
          backgroundColor: Color(0xff2a2d35),
          // backgroundColor: Colors.black,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 15.0, 0, 0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                ),
                onPressed: () {
                  // do something
                },
              ),
            )
          ],
          elevation: 0,
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff2a2d32),
                Color(0xff131313),
              ],
            ),
          ),
          child: Center(
            child: Text(
              'Hello Yowza!',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
