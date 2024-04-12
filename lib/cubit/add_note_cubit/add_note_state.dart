part of 'add_note_cubit.dart';

sealed class AddNoteState {}

final class AddNoteCubitInitial extends AddNoteState {}

final class AddNoteCubitLoading extends AddNoteState {}

final class AddNoteCubitSuccess extends AddNoteState {}
final class AddNoteCubitFaliure extends AddNoteState {
  final String errmessage;

  AddNoteCubitFaliure( this.errmessage);
}
