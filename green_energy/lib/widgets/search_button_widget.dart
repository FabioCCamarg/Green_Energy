import 'package:flutter/material.dart';

class SearchButtonWidget extends StatefulWidget {
  const SearchButtonWidget({
    super.key,
  });

  @override
  State<SearchButtonWidget> createState() => _SearchButtonWidgetState();
}

class _SearchButtonWidgetState extends State<SearchButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(241, 241, 241, 1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Pesquisar",
          prefixIcon: Icon(
            Icons.search,
            color: Color.fromRGBO(206, 206, 206, 1),
          ),
          hintStyle: TextStyle(
            color: Color.fromRGBO(206, 206, 206, 1),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
