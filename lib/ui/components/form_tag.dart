import 'package:flutter/material.dart';

class FormTag extends StatelessWidget {
  final String text;

  const FormTag({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.black),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            color: Colors.black,
          ),
        ),
        minimumSize: MaterialStateProperty.all(const Size(120, 44)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
