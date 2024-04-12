import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';

import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteModalBottom extends StatelessWidget {
  const AddNoteModalBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        
        children: [
          const SizedBox(height: 32),
          CustomTextFormField(
              onSaved: (value) {
                title = value;
              },
              hint: "Title"),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: "\n\nContent\n\n",
            maxLines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
              ontap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              title: "Add"),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
