import 'package:flutter/material.dart';

class HomeNotice extends StatefulWidget {
  final String step;

  const HomeNotice({super.key, required this.step});

  @override
  State<HomeNotice> createState() => _HomeNoticeState();
}

class _HomeNoticeState extends State<HomeNotice> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.only(left: 14, top: 15, right: 14),
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 32, top: 20, bottom: 20),
            child: Icon(
              Icons.home,
              size: 24,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 32, top: 20, bottom: 20),
            child: Text("알림함"),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.arrow_back,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
