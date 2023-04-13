import 'package:flutter/material.dart';
import 'package:mentors_joy/domain/navigation.dart';
import 'package:mentors_joy/ui/components/action_button.dart';

import '../components/outlined_input.dart';
import '../mentor_upload_page/mentor_upload_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
        child: SizedBox(
          width: 360,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  'Регистрация',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const OutlinedInput(placeholder: 'Email'),
              const SizedBox(
                height: 16,
              ),
              const OutlinedInput(placeholder: 'Пароль'),
              const SizedBox(
                height: 16,
              ),
              const OutlinedInput(placeholder: 'Подтвердите пароль'),
              const SizedBox(
                height: 16,
              ),
              ActionButton(
                text: 'Зарегестрироваться',
                isActive: true,
                onPressed: () =>
                    navigate(const MentorUploadPage(), context: context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
