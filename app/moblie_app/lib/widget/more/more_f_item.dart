import 'package:flutter/material.dart';

class MoreItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const MoreItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 24, top: 27.5, right: 24, bottom: 27.5),
      child: Row(
        children: [
          Icon(icon),
          Text(title),
          const Spacer(),
          const Icon(Icons.arrow_right)
        ],
      ),
    );
  }
}
