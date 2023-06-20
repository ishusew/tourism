import 'package:flutter/material.dart';

Widget buildCardWidget({
  required String imageUrl,
  required IconData icon,
  required String text,
  required VoidCallback onTap,
}) {
  return Column(
    children: [
      GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            width: 90,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 34,
            ),
          ),
        ),
      ),
      Text(text),
    ],
  );
}

