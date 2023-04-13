import 'package:flutter/material.dart';
import 'package:mentors_joy/domain/navigation.dart';
import 'package:mentors_joy/ui/components/action_button.dart';
import 'package:mentors_joy/ui/sign_up.dart/sign_up_page.dart';

import '../components/outlined_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  'Войти',
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
              ActionButton(
                text: 'Войти',
                isActive: true,
                onPressed: () => navigate(const SignUpPage(), context: context),
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () => navigate(const SignUpPage(), context: context),
                child: const Text(
                  'Нет аккаунта? Зарегестрироваться!',
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
