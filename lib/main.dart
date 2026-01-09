import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp( // #1 Root Material app: sets app theme and first screen
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold( // #2 provides the basic basic layout for a screen
    appBar: AppBar( // #3 a bar usually displayed at the top of the app for title and navigation
      title: const Text('All Widgets'),
    ),
    body: Center( // #7 aligns its child to the middle
      child: Container( // #8 used for padding, styling, and colors
        padding: const EdgeInsets.all(20),
        child: Column( // #6 arranges children in a vertical line
          children: [
            Row( // #5 arranges children in a horizontal line
              children: [
                const Icon(Icons.star),
                const Text('Flutter'), // #4 displays a text to serve as the app's title
              ],
            ),
          ],
        ),
      ),
    ),
  );
}