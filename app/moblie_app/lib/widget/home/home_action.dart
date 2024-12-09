import 'package:flutter/material.dart';

class HomeAction extends StatefulWidget {
  final String step;

  const HomeAction({super.key, required this.step});

  @override
  State<HomeAction> createState() => _HomeActionState();
}

class _HomeActionState extends State<HomeAction> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 14, top: 15, right: 14),
      elevation: 0,
      color: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 12, bottom: 5),
            child: Icon(
              Icons.home,
              size: 70,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(widget.step),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 6, bottom: 20),
            child: Text("걸음/1만"),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 23),
            child: Icon(
              Icons.home,
              size: 70,
            ),
          )
        ],
      ),
    );
  }
}
