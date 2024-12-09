import 'package:flutter/material.dart';
import 'package:moblie_app/widget/myway/myway_progress.dart';

class MywayDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get maxExtent => 136;

  @override
  double get minExtent => 136;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Card(
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
        height: maxExtent,
        margin: const EdgeInsets.only(bottom: 1),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            )),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 24, top: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: 28,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("현재 베트남쌀국수냠냠로"),
                    )
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(left: 62, top: 6),
              child: Text("완주까지 1,867걸음"),
            ),
            SizedBox(
              height: 50,
              child: Menu0Progress(left: 20, right: 20),
            )
          ],
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant MywayDelegate oldDelegate) {
    return true;
  }
}
