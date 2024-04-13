import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/note_cubit/note_cubit.dart';
import 'package:notes_app/models/note_view_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
      child: Column(
        children: [
          const SizedBox(height: 40),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NoteCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: "Edit Note",
            icon: Icons.check,
          ),
          const SizedBox(height: 40),
          CustomTextFormField(
            hint: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onChanged: (value) {
              subTitle = value;
            },
            hint: widget.note.subTitle,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
