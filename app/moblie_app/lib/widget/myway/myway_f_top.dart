import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moblie_app/widget/myway/myway_progress.dart';

class MywayRoTop extends ConsumerStatefulWidget {
  const MywayRoTop({super.key});

  @override
  ConsumerState<MywayRoTop> createState() => _MywayRoTopRoState();
}

class _MywayRoTopRoState extends ConsumerState<MywayRoTop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24, top: 24, bottom: 13, right: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("동남아관광구"),
              Spacer(),
              Icon(Icons.home),
              Icon(Icons.home),
              Icon(Icons.home),
              Icon(Icons.home),
              Icon(Icons.home),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            ref.read(menu0Provider.notifier).addStep(500);
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.only(left: 24, bottom: 12, right: 24),
            padding: const EdgeInsets.only(top: 9, bottom: 9),
            child: const Center(
              child: Text("9,999캐시 도전중"),
            ),
          ),
        ),
      ],
    );
  }
}
