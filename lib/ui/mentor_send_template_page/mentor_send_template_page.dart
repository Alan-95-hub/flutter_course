import 'package:flutter/material.dart';

import '../../domain/navigation.dart';
import '../components/action_button.dart';
import '../components/create_form.dart';
import '../success/success_page.dart';

class MentorSendTemplatePage extends StatelessWidget {
  const MentorSendTemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'Отправьте шаблон',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const CreateForm(
                  tag: 'first_template',
                ),
                const CreateForm(
                  tag: 'second',
                ),
                const SizedBox(
                  height: 16.0,
                ),
                ActionButton(
                  text: 'Отправить',
                  isActive: true,
                  onPressed: () => navigate(
                    const SuccessPage(),
                    context: context,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
