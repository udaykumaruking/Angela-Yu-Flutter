import 'package:flutter/material.dart';

import 'challenge.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          // To view Challenge uncomment child: Challenge() line and comment ................
          // child: Challenge(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/abc.jpg'),
              ),
              Text(
                'Name Here',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Text(
                'Caption/ Role',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20,
                  color: Colors.teal[100],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 30,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      // size: 15,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+91 99126687803',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSansPro',
                          fontSize: 20),
                    )),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      // size: 15,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'udaykumaruking@gmail.com',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSansPro',
                          fontSize: 20),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
