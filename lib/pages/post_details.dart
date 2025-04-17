import 'package:flutter/material.dart';

class PostDetails extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String date;

  const PostDetails({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
            SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                shadows: [
                Shadow(
                  blurRadius: 10,
                  color: Colors.black,
                  offset: Offset(0, 2),
                ),
                ],
              ),
              ),
              background: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                imageUrl,
                fit: BoxFit.cover,
                ),
                Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  ),
                ),
                ),
              ],
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 41, 26, 118),
            iconTheme: const IconThemeData(
              color: Colors.white, // Set the back arrow color to white
            ),
            ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    description,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 18,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
