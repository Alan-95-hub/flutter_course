import 'package:f/ui/upload_template/upload_template_page.dart';
import 'package:flutter/material.dart';

import '../components/action_button.dart';
import '../components/selector_button.dart';

class SelectRolePage extends StatefulWidget {
  const SelectRolePage({super.key});

  @override
  State createState() => _SelectRolePageState();
}

class _SelectRolePageState extends State<SelectRolePage> {
  int _selectedButtonIndex = 0;

  void _handleButtonPressed(int buttonIndex) {
    setState(() {
      _selectedButtonIndex = buttonIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Выберите роль',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16.0),
              SelectorButton(
                text: 'Научный руководитель',
                isSelected: _selectedButtonIndex == 0,
                onPressed: () => _handleButtonPressed(0),
              ),
              const SizedBox(height: 16.0),
              SelectorButton(
                text: 'Студент',
                isSelected: _selectedButtonIndex == 1,
                onPressed: () => _handleButtonPressed(1),
              ),
              const SizedBox(height: 16.0),
              ActionButton(
                text: 'Далее',
                isActive: true,
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const UploadTemplatePage(),
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
