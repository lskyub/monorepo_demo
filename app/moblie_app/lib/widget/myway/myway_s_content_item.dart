import 'package:flutter/material.dart';

class MywayContentItem extends StatefulWidget {
  const MywayContentItem({super.key});

  @override
  State<MywayContentItem> createState() => _MywayContentItemState();
}

class _MywayContentItemState extends State<MywayContentItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}