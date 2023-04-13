import 'package:flutter/material.dart';

class UploadButton extends StatelessWidget {
  final String text;
  final bool isDone;
  final VoidCallback onPressed;

  const UploadButton({
    super.key,
    required this.text,
    required this.isDone,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(256, 44)),
        maximumSize: MaterialStateProperty.all(const Size(460, 44)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(
              color: isDone ? Colors.green : Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isDone ? Colors.green : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Icon(
            isDone ? Icons.done : Icons.attach_file,
            color: isDone ? Colors.green : Colors.grey,
          ),
        ],
      ),
    );
  }
}
