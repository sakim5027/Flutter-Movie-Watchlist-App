import 'package:flutter/material.dart';

import '../models/movie.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;
  const DetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero poster
            Image.asset(
              movie.posterPath,
              height: 300,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            // Title, cast, synopsis…
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),

                  const SizedBox(height: 20),

                  Text('Cast', style: Theme.of(context).textTheme.titleLarge),

                  const SizedBox(height: 8),

                  Text(movie.cast.join(', ')),

                  const SizedBox(height: 20),

                  Text(
                    'Synopsis',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),

                  const SizedBox(height: 8),

                  Text(
                    movie.synopsis,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
