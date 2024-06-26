import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/consts/consts.dart';
import 'package:notes_app/models/note_view_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteCubitInitial());

  Color? color = const Color(0xff577399);
  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNoteCubitLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(note);
      emit(AddNoteCubitSuccess());
    } catch (e) {
      emit(
        AddNoteCubitFaliure(e.toString()),
      );
    }
  }
}
