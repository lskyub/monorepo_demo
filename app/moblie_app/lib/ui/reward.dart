import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moblie_app/utils/remove_glow_behavior.dart';
import 'package:moblie_app/utils/snap/snap.dart';
import 'package:moblie_app/utils/snap/snap_scroll_physics.dart';
import 'package:moblie_app/widget/common_header.dart';
import 'package:moblie_app/widget/reward/reward_invate.dart';
import 'package:moblie_app/widget/reward/reward_stateful.dart';
import 'package:moblie_app/widget/reward/reward_stateless.dart';

class RewardScreen extends ConsumerStatefulWidget {
  const RewardScreen({super.key});

  @override
  ConsumerState<RewardScreen> createState() => _RewardState();
}

class _RewardState extends ConsumerState<RewardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 243, 245),
      body: SafeArea(
          child: CustomScrollView(
        physics: SnapScrollPhysics(snaps: [Snap.avoidZone(0, 50)]),
        scrollBehavior: RemoveScrollGlowBehavior(),
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: HeaderDelegate(),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 14, right: 14, top: 15),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.35,
              ),
              delegate: SliverChildListDelegate(
                [
                  const RewardStateless(title: "바로적립", icon: Icons.home),
                  const RewardStateful(title: "이벤트", icon: Icons.home),
                  const RewardStateful(title: "캐시교환", icon: Icons.home),
                  const RewardStateless(title: "뉴스적립", icon: Icons.home),
                  const RewardStateless(title: "상점", icon: Icons.home),
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(left: 14, right: 14, top: 15),
            sliver: SliverToBoxAdapter(
              child: RewardInvate(),
            ),
          )
        ],
      )),
    );
  }
}
