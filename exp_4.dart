import 'package:flutter/material.dart';

void main() {
  runApp(CardLayoutApp());
}

class CardLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quit Smoking Guide',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CardLayoutPage(),
    );
  }
}

class CardLayoutPage extends StatelessWidget {
  final List<String> items = [
    'Benefits of Quitting Smoking',
    'Tips for Quitting Smoking',
    'Nicotine Replacement Therapy (NRT)',
    'Healthy Alternatives to Smoking',
    'Support Groups and Counseling',
  ];

  final List<String> subtitles = [
    'Discover the positive changes that occur in your body after quitting smoking.',
    'Get practical advice and strategies to help you quit smoking for good.',
    'Learn about various nicotine replacement therapies to manage cravings.',
    'Explore healthier habits and activities to replace smoking.',
    'Find encouragement and assistance from others who are also trying to quit.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quit Smoking Guide',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue, // App bar color
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 4, // Shadow elevation
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Card border radius
            ),
            child: ListTile(
              title: Text(
                items[index],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue, // Title text color
                ),
              ),
              subtitle: Text(
                subtitles[index],
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey, // Subtitle text color
                ),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.blue, // Circle avatar background color
                child: Text(
                  '${index + 1}',
                  style: TextStyle(
                    color: Colors.white, // Circle avatar text color
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                // Action when the card is tapped
              },
            ),
          );
        },
      ),
    );
  }
}
