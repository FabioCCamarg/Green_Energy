import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  final String label;
  final String hintText;
  final bool obscureText;
  const InputWidget({
    super.key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(241, 241, 241, 1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                color: Color.fromRGBO(206, 206, 206, 1),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  if (isObscure == true) {
                    setState(() {
                      isObscure = false;
                    });
                  } else {
                    setState(() {
                      isObscure = true;
                    });
                  }
                },
                child: Visibility(
                  visible: widget.obscureText,
                  replacement: const SizedBox.shrink(),
                  child: isObscure
                      ? const Icon(Icons.remove_red_eye_outlined)
                      : const Icon(Icons.remove_red_eye_rounded),
                ),
              ),
            ),
            obscureText: isObscure,
          ),
        )
      ],
    );
  }
}
