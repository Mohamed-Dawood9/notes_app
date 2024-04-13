import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/consts/consts.dart';

import 'package:notes_app/models/note_view_model.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/view/edit_note_view.dart';
import 'package:notes_app/view/notes_view.dart';

void main() async {
  Bloc.observer = SimpleBlockObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox(kNotesBox);

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
