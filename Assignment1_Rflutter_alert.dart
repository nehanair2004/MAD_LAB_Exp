import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assgn(),
    );
  }
}

class Assgn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('rFlutter Alert Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _showAlert(context);
          },
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Click for a surprise',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    Alert(
      context: context,
      content: Column(
        children: <Widget>[
          Image.asset(
            'assets/holi_image.jpg',
            height: 150,
          ),
          SizedBox(height: 20),
          Text(
            'HAPPY HOLI',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Thank You',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
          ),
        ),
      ],
    ).show();
  }
  }
