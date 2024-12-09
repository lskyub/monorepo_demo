import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moblie_app/utils/remove_glow_behavior.dart';
import 'package:moblie_app/widget/myway/myway_f_item.dart';
import 'package:moblie_app/widget/myway/myway_top.dart';

class MywayScreen extends ConsumerStatefulWidget {
  const MywayScreen({super.key});

  @override
  ConsumerState<MywayScreen> createState() => _MywayState();
}

class _MywayState extends ConsumerState<MywayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 243, 245),
      body: SafeArea(
        child: CustomScrollView(
          scrollBehavior: RemoveScrollGlowBehavior(),
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: MywayDelegate(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => const MywayRoItem(),
                childCount: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
