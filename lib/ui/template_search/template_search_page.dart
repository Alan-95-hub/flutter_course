import 'package:flutter/material.dart';
import 'package:mentors_joy/ui/components/action_button.dart';
import 'package:mentors_joy/ui/components/action_tile.dart';

import '../components/outlined_input.dart';

class TemplateSearchPage extends StatelessWidget {
  const TemplateSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(64.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: Text(
              'Поиск по электронной почте',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Stack(
            children: [
              const OutlinedInput(),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 44,
                  width: 160,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: ActionButton(
                      text: 'Искать',
                      isActive: true,
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          ActionTile(
            title: 'Техническое задание',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
