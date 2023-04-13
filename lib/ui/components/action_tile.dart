import 'package:flutter/material.dart';

class ActionTile extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const ActionTile({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        height: 64.0,
        color: const Color.fromARGB(255, 245, 241, 241),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
