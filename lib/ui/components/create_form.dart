import 'package:flutter/material.dart';

import 'form_tag.dart';

class CreateForm extends StatelessWidget {
  final String tag;

  const CreateForm({
    super.key,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          color: const Color.fromARGB(255, 247, 245, 245),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  cursorColor: Colors.orange,
                  decoration: const InputDecoration(
                    hintText: 'Название',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  cursorColor: Colors.orange,
                  decoration: const InputDecoration(
                    hintText: 'Комментарий',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                FormTag(text: tag),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
