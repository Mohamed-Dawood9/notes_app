import 'package:flutter/material.dart';

class CutsomIcon extends StatelessWidget {
  const CutsomIcon({super.key, required this.icon});
 
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child:  Icon(
        icon ,
        size: 28,
      ),
    );
  }
}
