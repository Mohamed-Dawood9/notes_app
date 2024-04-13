import 'package:flutter/material.dart';
import 'package:notes_app/cubit/note_cubit/note_cubit.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  static String id = "editNoteView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: const Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 8),
          child: Column(
            children: [
              SizedBox(height: 40),
              CustomAppBar(
                title: "Edit Note",
                icon: Icons.check,
              ),
              SizedBox(height: 40),
              CustomTextFormField(hint: "Title"),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hint: "\n\nContent\n\n",
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
