import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/movies_provider.dart';
import '../widgets/card_swiper.dart';
import '../widgets/movie_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          ),
        ],
        title: const Center(
          child: Text('Peliculas en cine'),
        ),
      ),
      body: Column(
        children: [
          CardSwiper(movies: moviesProvider.onDisplayMovies),
          MovieSlider(
            movies: moviesProvider.popularMovies,
          ),
        ],
      ),
    );
  }
}
