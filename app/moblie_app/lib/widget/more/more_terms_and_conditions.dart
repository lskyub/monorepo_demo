import 'package:flutter/material.dart';

class MoreTermsAndConditions extends StatelessWidget {
  const MoreTermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24, top: 27.5, right: 24, bottom: 27.5),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Text("이용 약관"),
            Padding(
              padding:
                  EdgeInsets.only(left: 7.5, top: 2, right: 7.5),
              child: VerticalDivider(
                color: Color.fromARGB(255, 164, 170, 178),
                width: 1,
                thickness: 1,
                indent: 4,
                endIndent: 4,
              ),
            ),
            Text("개인정보처리방침"),
          ],
        ),
      ),
    );
  }
}
