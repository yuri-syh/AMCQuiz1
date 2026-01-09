import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp( // #1 Root Material app: sets app theme and first screen
    title: 'AMC Quiz 1',
    theme: ThemeData(primaryColor: Colors.blue),
    home: const Homepage(),
  );
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold( // #2 provides the basic basic layout for a screen
    appBar: AppBar( // #3 a bar usually displayed at the top of the app for title and navigation
      title: Text('Flutter'), // #4 displays a text to serve as the app's title
    ),
    body: Center( // #7 aligns its child to the middle
      child: Column( // #6 arranges children in a vertical line
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container( // #8 used for padding, styling, and colors
            padding: const EdgeInsets.all(20),
            color: Colors.pink[50],
            child: Row( // #5 arranges children in a horizontal line
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Quiz 1 Completed!'),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}