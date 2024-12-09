import 'package:flutter/material.dart';

class HomeDiff extends StatefulWidget {
  final String step;

  const HomeDiff({super.key, required this.step});

  @override
  State<HomeDiff> createState() => _HomeDiffState();
}

class _HomeDiffState extends State<HomeDiff> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.only(left: 14, top: 15, right: 14),
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: EdgeInsets.only(left: 18, top: 30, right: 18, bottom: 18),
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(left: 18, bottom: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "언제나 에너지가 넘치는 체력왕",
                      softWrap: true,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 22, bottom: 8),
                      child: Text(
                        "오늘 현재까지 20대 여성 중",
                        softWrap: true,
                      ),
                    ),
                    Text("걸음 수 상위 1%")
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(right: 18, bottom: 18),
                child: Column(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
