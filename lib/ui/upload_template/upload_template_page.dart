import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../domain/navigation.dart';
import '../components/action_button.dart';
import '../components/upload_button.dart';
import '../send_template/send_template_page.dart';

class UploadTemplatePage extends StatefulWidget {
  const UploadTemplatePage({super.key});

  @override
  State createState() => _UploadTemplatePageState();
}

class _UploadTemplatePageState extends State<UploadTemplatePage> {
  String? _filePathJson;
  String? _filePathDocx;

  Future<void> _pickJsonFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _filePathJson = result.files.single.path;
      });
    }
  }

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
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 64,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Создайте шаблон',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            UploadButton(
              text: 'Нажмите, чтобы выбрать .json файл',
              isDone: _filePathJson != null,
              onPressed: _pickJsonFile,
            ),
            const SizedBox(height: 16.0),
            UploadButton(
              text: 'Нажмите, чтобы выбрать .docx файл',
              isDone: _filePathDocx != null,
              onPressed: _pickDocxFile,
            ),
            const SizedBox(height: 16.0),
            ActionButton(
              text: 'Отправить',
              isActive: _filePathDocx != null && _filePathJson != null,
              onPressed: () => navigate(
                const SendTemplatePage(),
                context: context,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
