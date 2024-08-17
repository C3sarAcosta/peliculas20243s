import 'package:flutter/material.dart';

import '../widgets/card_swiper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          CardSwiper(),
          //TODO: Borrar comentario MovieSlider
          //MovieSlider(),
        ],
      ),
    );
  }
}
