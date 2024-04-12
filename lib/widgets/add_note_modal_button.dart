import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteModalBottom extends StatelessWidget {
  const AddNoteModalBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is AddNoteCubitFaliure) {
              print("failed ${state.errmessage}");
            }
            if (state is AddNoteCubitSuccess) {
              Navigator.pop(context);
            }
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteCubitLoading ? true : false,
              child: const AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
