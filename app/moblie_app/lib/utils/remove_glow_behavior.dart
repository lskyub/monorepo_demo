import 'package:flutter/material.dart';

class RemoveScrollGlowBehavior extends MaterialScrollBehavior {

  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
