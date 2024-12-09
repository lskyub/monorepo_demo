import 'package:flutter/material.dart';

class MoreVersion extends StatefulWidget {
  const MoreVersion({super.key});

  @override
  State<MoreVersion> createState() => _MoreVersionState();
}

class _MoreVersionState extends State<MoreVersion> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24, right: 24),
      child: Row(
        children: [
          Icon(Icons.home),
          Padding(
            padding: EdgeInsets.only(left: 4),
            child: Text("최신 버전 사용 중"),
          )
        ],
      ),
    );
  }
}
