import 'dart:math';

import 'package:flutter/material.dart';

class HeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get maxExtent => 136;

  @override
  double get minExtent => 80;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    double shrinkPercentage = min(1, shrinkOffset / (maxExtent - minExtent));
    return Stack(children: [
      Opacity(
        opacity: 1 - shrinkPercentage,
        child: _build(1 - shrinkPercentage),
      ),
      Opacity(
        opacity: shrinkPercentage,
        child: _buildCollapsed(),
      ),
    ]);
  }

  Widget _buildCollapsed() => Card(
        color: Colors.grey,
        clipBehavior: Clip.hardEdge,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Container(
          height: minExtent,
          margin: const EdgeInsets.only(bottom: 1),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              )),
          child: const IntrinsicHeight(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 34),
                  child: Icon(
                    Icons.home,
                    size: 28,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.home,
                  size: 22,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7),
                  child: Text("0"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: VerticalDivider(
                    color: Color.fromARGB(255, 164, 170, 178),
                    width: 1,
                    thickness: 1,
                    indent: 31,
                    endIndent: 31,
                  ),
                ),
                Icon(
                  Icons.home,
                  size: 18,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7, right: 43),
                  child: Text("0"),
                )
              ],
            ),
          ),
        ),
      );

  Widget _build(double value) => SizedBox(
        height: maxExtent,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.white,
          elevation: 0,
          margin: EdgeInsets.only(
              left: 14.0, top: 20.0 * value, right: 14.0, bottom: 0.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 16.5),
            child: Column(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: 28,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text("타이틀"),
                    )
                  ],
                ),
                SizedBox(
                  height: 19 * value,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 9),
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        Icon(
                          Icons.home,
                          size: 24,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7),
                          child: Text("0"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: VerticalDivider(
                            color: Color.fromARGB(255, 164, 170, 178),
                            width: 1,
                            thickness: 1,
                            indent: 4,
                            endIndent: 4,
                          ),
                        ),
                        Icon(
                          Icons.home,
                          size: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7),
                          child: Text("0"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  @override
  bool shouldRebuild(covariant HeaderDelegate oldDelegate) {
    return true;
  }
}
