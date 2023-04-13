import 'package:flutter/material.dart';

import '../components/selector_button.dart';
import '../template_search/template_search_page.dart';
import '../upload_template/upload_template_page.dart';

class StudentSelectorPage extends StatefulWidget {
  const StudentSelectorPage({super.key});

  @override
  State<StudentSelectorPage> createState() => _StudentSelectorPageState();
}

class _StudentSelectorPageState extends State<StudentSelectorPage> {
  var selectedPage = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          elevation: 0,
        ),
        body: Stack(
          children: [
            selectedPage == 0
                ? const UploadTemplatePage()
                : const TemplateSearchPage(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SelectorButton(
                      text: 'Страница студента',
                      isSelected: selectedPage == 0,
                      onPressed: () => setSelectedPage(0),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SelectorButton(
                    text: 'Поиск шаблона по email руководителя',
                    isSelected: selectedPage == 1,
                    onPressed: () => setSelectedPage(1),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  void setSelectedPage(int index) => setState(() => selectedPage = index);
}
