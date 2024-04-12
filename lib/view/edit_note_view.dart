import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  static String id = "editNoteView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 8),
        child: Column(
          children: [
            SizedBox(height: 40),
            CustomAppBar(
              title: "Edit Note",
              icon: Icons.check,
            ),
          ],
        ),
      ),
    );
  }
}
