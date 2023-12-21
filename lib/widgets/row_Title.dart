import 'package:flutter/material.dart';

class rowTitle extends StatelessWidget {
  final String name;
  final String value;
  final String imagePath;
  const rowTitle({
    super.key,
    required this.name,
    required this.value,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          scale: 8,
        ),
        Column(
          children: [
            Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              value,
              style: TextStyle(color: Colors.white),
            ),
          ],
        )
      ],
    );
  }
}
