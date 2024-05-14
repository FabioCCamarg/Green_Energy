import 'package:flutter/material.dart';
import 'package:green_energy/views/base_view.dart';

class GreenButton extends StatelessWidget {
  final String text;
  const GreenButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const BaseView(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(139, 215, 142, 1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(29, 125, 33, 1),
          ),
        ),
      ),
    );
  }
}
