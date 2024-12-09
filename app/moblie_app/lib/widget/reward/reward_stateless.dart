import 'package:flutter/material.dart';

class RewardStateless extends StatelessWidget {
  final IconData icon;
  final String title;
  const RewardStateless({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 17),
            child: Text(title),
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Icon(icon)],
          )
        ],
      ),
    );
  }
}
