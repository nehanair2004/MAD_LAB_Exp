import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CraveCrush',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CraveCrush',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white, // Text color for app bar title
          ),
        ),
        backgroundColor: Colors.blue, // Background color for app bar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.favorite,
              size: 100,
              color: Colors.red,
            ),
            SizedBox(height: 20),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmOL0k8egJ6J4b8XF6xftMlLeOVSXncvgyjg&usqp=CAU', // Replace with your image URL
              width: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Hello, User!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Text color
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Thank you for choosing us',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 20,
                color: Colors.green, // Text color
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'a step towards a healthy life',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black, // Text color
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200], // Background color for the whole page
    );
  }
}
