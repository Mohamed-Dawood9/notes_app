import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';

import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteModalBottom extends StatelessWidget {
  const AddNoteModalBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            const CustomTextField(hint: "Title"),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              hint: "\n\nContent\n\n",
              maxLines: 5,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomButton(title: "Add"),
           const SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}
