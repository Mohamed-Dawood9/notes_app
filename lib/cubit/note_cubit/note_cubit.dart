import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:meta/meta.dart';
import 'package:notes_app/consts/consts.dart';
import 'package:notes_app/models/note_view_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  List<NoteModel>? notes;

  fetchAllNotes() async {
    var noteBox = Hive.box<NoteModel>(kNotesBox);
    notes = noteBox.values.toList();
    emit(NoteSuccess());
  }
}
