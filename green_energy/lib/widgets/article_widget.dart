import 'package:flutter/material.dart';

class ArticleWidget extends StatelessWidget {
  final String title;
  final String description;
  final String views;
  final String user;
  const ArticleWidget({
    super.key,
    required this.title,
    required this.description,
    required this.views,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(206, 206, 206, 1),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              views,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(206, 206, 206, 1),
              ),
            ),
            Text(
              user,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(29, 125, 33, 1),
              ),
            ),
          ],
        )
      ],
    );
  }
}
