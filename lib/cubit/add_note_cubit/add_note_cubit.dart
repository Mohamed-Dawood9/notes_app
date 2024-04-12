import 'package:bloc/bloc.dart';

part 'add_note_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
}
