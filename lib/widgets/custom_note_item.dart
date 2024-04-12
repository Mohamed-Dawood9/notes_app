import 'package:flutter/material.dart';
import 'package:notes_app/consts/consts.dart';
import 'package:notes_app/view/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 16),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter Tips",
                style: TextStyle(
                    color: kTextColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Believe on YourSelf,You Only Live once ",
                  style: TextStyle(color: kTextColorWithOpacity, fontSize: 18),
                ),
              ),
              trailing: IconButton(
                tooltip: "Remove Your Note",
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: kTextColor,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, bottom: 8),
              child: Text("Thu April 11,2024",
                  style: TextStyle(color: kTextColorWithOpacity, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
