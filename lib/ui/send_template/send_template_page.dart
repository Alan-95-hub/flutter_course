import 'package:flutter/material.dart';

import '../../domain/navigation.dart';
import '../components/action_button.dart';
import '../components/upload_form.dart';
import '../success/success_page.dart';

class SendTemplatePage extends StatelessWidget {
  const SendTemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 64),
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
                const UploadForm(
                  title: 'Название проекта',
                  body: 'Впишите полное название проекта на русском языке.',
                ),
                const UploadForm(
                  title: 'Назначение для разработки',
                  body:
                      'Укажите назначение разработки проекта в соответствии с нормами.',
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
