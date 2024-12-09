import 'package:flutter/material.dart';

class MywayHorizontalItem extends StatefulWidget {
  const MywayHorizontalItem({super.key});

  @override
  State<MywayHorizontalItem> createState() => MywayHorizontalState();
}

class MywayHorizontalState extends State<MywayHorizontalItem> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var itemW = width / 3;
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: const EdgeInsets.only(left: 8),
      width: itemW,
    );
  }
}
