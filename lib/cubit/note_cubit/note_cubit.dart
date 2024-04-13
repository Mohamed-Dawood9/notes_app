import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:meta/meta.dart';
import 'package:notes_app/consts/consts.dart';
import 'package:notes_app/models/note_view_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  fetchAllNotes() {
    
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(NoteSuccess(notes: notes));
    } catch (e) {
      emit(
        NoteFailure(errMessage:e.toString()),
      );
    }
  }
  }

