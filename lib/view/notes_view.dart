import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "NotesView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(side: BorderSide(color: Color(0xff4e388b))),
          child: const Icon(Icons.add)),
      body: const NotesViewBody(),
    );
  }
}
