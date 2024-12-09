import 'package:flutter/material.dart';

class MoreProfile extends StatefulWidget {
  final IconData icon;
  final String nick;
  const MoreProfile({super.key, required this.icon, required this.nick});

  @override
  State<MoreProfile> createState() => _MoreProfileState();
}

class _MoreProfileState extends State<MoreProfile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 24, top: 27.5, right: 24, bottom: 27.5),
      child: Column(
        children: [
          Row(
            children: [
              Icon(widget.icon),
              const Text("내 프로필"),
              const Spacer(),
              const Icon(Icons.arrow_right)
            ],
          ),
          Row(
            children: [
              const Text("닉네임"),
              Text(widget.nick)
            ],
          )
        ],
      ),
    );
  }
}
