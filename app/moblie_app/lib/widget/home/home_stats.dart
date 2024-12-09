import 'package:flutter/material.dart';

class HomeStats extends StatefulWidget {
  final String step;

  const HomeStats({super.key, required this.step});

  @override
  State<HomeStats> createState() => _HomeStatsState();
}

class _HomeStatsState extends State<HomeStats> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.only(left: 14, top: 15, right: 14),
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.home),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("내 걸음 정보"),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 3),
                  child: Text("더보기"),
                ),
                Icon(Icons.home)
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 13, top: 25),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 23),
                    child: Icon(
                      Icons.home,
                      size: 42,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "오늘 햄버거 하나 만큼 불태웠어요",
                        softWrap: true,
                      ),
                      Text("300kcal")
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 13, top: 18),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 23),
                    child: Icon(
                      Icons.home,
                      size: 42,
                    ),
                  ),
                  Flexible(
                      child: Text(
                    "최근 7일 동안 평균 15,342걸음 걸었어요.",
                    softWrap: true,
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
