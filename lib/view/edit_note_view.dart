import 'package:flutter/material.dart';
import 'package:notes_app/models/note_view_model.dart';

import 'package:notes_app/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});

  final NoteModel note;
  static String id = "editNoteView";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNoteViewBody(note: note,),
    );
  }
}
