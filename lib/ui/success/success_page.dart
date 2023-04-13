import 'package:flutter/material.dart';

import '../../domain/navigation.dart';
import '../components/action_button.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Успешно отправлено',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ActionButton(
                  text: 'Вернуться к загрузке',
                  isActive: true,
                  onPressed: () {
                    pop(context: context);
                    pop(context: context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
