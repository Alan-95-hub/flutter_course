import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onPressed;

  const ActionButton({
    super.key,
    required this.text,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isActive ? onPressed : null,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(256, 44)),
        backgroundColor: MaterialStateProperty.all<Color>(
          isActive ? Colors.orange : Colors.grey[300]!,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
      child: Text(text),
    );
  }
}
