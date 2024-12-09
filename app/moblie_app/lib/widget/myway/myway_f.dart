import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MywayRo extends ConsumerWidget {
  const MywayRo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var width = MediaQuery.of(context).size.width;
    var itemW = width / 3;
    var itemH = itemW * 1.4;
    return SizedBox(
      height: itemH,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  margin: const EdgeInsets.only(left: 8),
                  width: itemW,
                ),
              );
            } else if (index == 4) {
              return Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  margin: const EdgeInsets.only(left: 8),
                  width: itemW,
                ),
              );
            } else {
              return Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                margin: const EdgeInsets.only(left: 8),
                width: itemW,
              );
            }
          }),
    );
  }
}
