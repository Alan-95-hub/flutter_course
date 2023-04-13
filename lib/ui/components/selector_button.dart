import 'package:flutter/material.dart';

class SelectorButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final void Function() onPressed;

  const SelectorButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(256, 44)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(
              color: isSelected ? Colors.orange : Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.orange : Colors.grey,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
