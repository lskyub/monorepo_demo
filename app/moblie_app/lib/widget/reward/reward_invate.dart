import 'package:flutter/material.dart';

class RewardInvate extends StatelessWidget {
  const RewardInvate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 22, top: 20, right: 22, bottom: 20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("친구와 함께 즐기면 "),
          const Spacer(),
          Container(
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            padding:
                const EdgeInsets.only(left: 14, top: 9, right: 14, bottom: 9),
            child: const Text("바로 참여"),
          )
        ],
      ),
    );
  }
}
