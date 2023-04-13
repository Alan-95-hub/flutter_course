import 'package:flutter/material.dart';

class OutlinedInput extends StatelessWidget {
  final String? placeholder;
  const OutlinedInput({
    super.key,
    this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.emailAddress,
        maxLines: 1,
        cursorColor: Colors.orange,
        decoration: InputDecoration(
          hintText: placeholder,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1, color: Color.fromARGB(255, 208, 208, 208)),
            borderRadius: BorderRadius.circular(50.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.orange),
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
    );
  }
}
