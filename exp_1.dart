import 'package:flutter/material.dart';

void main() {
  runApp(QuitSmokeApp());
}

class QuitSmokeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CraveCrush',
      theme: ThemeData(
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
          accentColor: Colors.green,
        ),
        scaffoldBackgroundColor: Color(0xF4F0BB),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      home: QuitSmokeHomePage(),
    );
  }
}

class QuitSmokeHomePage extends StatefulWidget {
  @override
  _QuitSmokeHomePageState createState() => _QuitSmokeHomePageState();
}

class _QuitSmokeHomePageState extends State<QuitSmokeHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('you are doing great'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Color accentColor = Theme.of(context).colorScheme.secondary;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quit Smoke',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          'Start your SmokeFree journey today!!!',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: accentColor,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showSnackBar();
        },
        backgroundColor: accentColor,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
