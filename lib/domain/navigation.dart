import 'package:flutter/material.dart';

void navigate(
  Widget destination, {
  required BuildContext context,
}) =>
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => destination,
      ),
    );

void pop({
  required BuildContext context,
}) =>
    Navigator.of(context).pop();
