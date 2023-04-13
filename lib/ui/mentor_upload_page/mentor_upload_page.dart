import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:mentors_joy/ui/components/action_tile.dart';
import 'package:mentors_joy/ui/mentor_send_template_page/mentor_send_template_page.dart';

import '../../domain/navigation.dart';
import '../components/action_button.dart';
import '../components/upload_button.dart';

class MentorUploadPage extends StatefulWidget {
  const MentorUploadPage({super.key});

  @override
  State<MentorUploadPage> createState() => _MentorUploadPageState();
}

class _MentorUploadPageState extends State<MentorUploadPage> {
  String? _filePathDocx;

  Future<void> _pickDocxFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _filePathDocx = result.files.single.path;
      });
    }
  }

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
      body: Padding(
        padding: const EdgeInsets.all(64.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ActionTile(
                title: 'Техническое задание',
                onTap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              ActionTile(
                title: 'Пояснительная записка',
                onTap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              ActionTile(
                title: 'Руководство оператора',
                onTap: () {},
              ),
              const SizedBox(
                height: 56,
              ),
              const Center(
                child: Text(
                  'Загрузка шаблона',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              UploadButton(
                text: 'Нажмите, чтобы выбрать .docx файл',
                isDone: _filePathDocx != null,
                onPressed: _pickDocxFile,
              ),
              const SizedBox(
                height: 16,
              ),
              ActionButton(
                text: 'Отправить',
                isActive: true,
                onPressed: () => navigate(
                  const MentorSendTemplatePage(),
                  context: context,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
