import 'package:flutter/material.dart';

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
      title: 'I am Poor',
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am Poor'),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Text(
                'I am Poor',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 400,
                width: 500,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('images/image.jpg'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
