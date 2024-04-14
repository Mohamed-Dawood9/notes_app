import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.redAccent,
            radius: 30,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 26,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 30,
          );
  }
}

class ColorItemList extends StatefulWidget {
  const ColorItemList({super.key});

  @override
  State<ColorItemList> createState() => _ColorItemListState();
}

class _ColorItemListState extends State<ColorItemList> {
  List<Color> colors = const [
    Color(0xff577399),
    Color(0xffCBAC88),
    Color(0xffEDB6A3),
    Color(0xffF8E9E9),
    Color(0xffCDE6F5),
    Color(0xff707078),
    Color(0xff06A77D),
    Color(0xff554640),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
