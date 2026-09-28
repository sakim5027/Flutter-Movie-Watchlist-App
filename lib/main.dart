import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MovieWatchlistApp());
}

class MovieWatchlistApp extends StatelessWidget {
  const MovieWatchlistApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Watchlist',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: .fromSeed(seedColor: Colors.red),
      ),
      home: const HomeScreen(),
    );
  }
}
