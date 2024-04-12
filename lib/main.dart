import 'package:flutter/material.dart';
import 'package:notes_app/view/edit_note_view.dart';
import 'package:notes_app/view/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        NotesView.id: (context) => const NotesView(),
        EditNoteView.id: (context) => const EditNoteView(),
      },
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      initialRoute: NotesView.id,
    );
  }
}
