import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/consts/consts.dart';
import 'package:notes_app/cubit/note_cubit/note_cubit.dart';
import 'package:notes_app/models/note_view_model.dart';
import 'package:notes_app/view/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(
                    color: kTextColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  note.subTitle,
                  style: TextStyle(color: kTextColorWithOpacity, fontSize: 18),
                ),
              ),
              trailing: IconButton(
                tooltip: "Remove Your Note",
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                },
                icon: const Icon(
                  Icons.delete,
                  color: kTextColor,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, bottom: 8),
              child: Text(note.date,
                  style: TextStyle(color: kTextColorWithOpacity, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
