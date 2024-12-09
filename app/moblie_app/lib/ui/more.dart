import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moblie_app/utils/remove_glow_behavior.dart';
import 'package:moblie_app/widget/more/more_f_item.dart';
import 'package:moblie_app/widget/more/more_profile.dart';
import 'package:moblie_app/widget/more/more_terms_and_conditions.dart';
import 'package:moblie_app/widget/more/more_version.dart';

class MoreScreen extends ConsumerStatefulWidget {
  const MoreScreen({super.key});

  @override
  ConsumerState<MoreScreen> createState() => _MoreState();
}

class _MoreState extends ConsumerState<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 243, 245),
      body: SafeArea(
          child: CustomScrollView(
        scrollBehavior: RemoveScrollGlowBehavior(),
        slivers: const [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 20, right: 20),
              child: Row(
                children: [Spacer(), Icon(Icons.home), Icon(Icons.home)],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 12.5, right: 20),
              child: Column(
                children: [
                  MoreProfile(icon: Icons.home, nick: "테스트"),
                  Divider(
                    color: Colors.grey,
                    height: 1,
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  MoreItem(icon: Icons.home, title: "내 걸음 정보"),
                  Divider(
                    color: Colors.grey,
                    height: 1,
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  MoreItem(icon: Icons.home, title: "도움말"),
                  Divider(
                    color: Colors.grey,
                    height: 1,
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  MoreTermsAndConditions(),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 40),
                  child: MoreVersion(),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
