import 'package:flutter/material.dart';

class AlbumImageTile extends StatelessWidget {
  final String imagePath;

  const AlbumImageTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
    );
  }
}
