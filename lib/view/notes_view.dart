import 'package:flutter/material.dart';

import 'package:notes_app/consts/consts.dart';

import 'package:notes_app/widgets/add_note_modal_button.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "NotesView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
            backgroundColor: kPrimaryColor,
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return const AddNoteModalBottom();
                  });
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28)),
            child: const Icon(Icons.add)),
      ),
      body: const NotesViewBody(),
    );
  }
}
