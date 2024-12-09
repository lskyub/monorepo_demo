import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moblie_app/widget/myway/myway_content.dart';
import 'package:moblie_app/widget/myway/myway_f.dart';
import 'package:moblie_app/widget/myway/myway_f_top.dart';

class MywayRoItem extends ConsumerWidget {
  const MywayRoItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        MywayRoTop(),
        MywayRo(),
        MywayContent(),
      ],
    );
  }
}
