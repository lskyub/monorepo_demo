import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    this.title,
    this.content,
    this.actions,
    super.key,
  });

  final Widget? title;

  final Widget? content;

  final Widget? actions;

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = <Widget>[];

    if (title != null) {
      children.add(title!);
    }

    if (content != null) {
      children.add(content!);
    }

    if (actions != null) {
      children.add(actions!);
    }

    Widget dialogChild = IntrinsicWidth(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      ),
    );

    return Dialog(
      elevation: 0,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: dialogChild,
    );
  }
}

class CustomDialogTitle extends StatelessWidget {
  const CustomDialogTitle({
    required this.data,
    required this.padding,
    super.key,
  });

  final String data;

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: padding,
      child: Text(data),
    ));
  }
}

class CustomDialogText extends StatelessWidget {
  const CustomDialogText({
    required this.data,
    this.padding,
    super.key,
  });

  final String data;

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: padding == null ? EdgeInsets.zero : padding!,
      child: Text(data),
    ));
  }
}

class CustomDialogButton extends StatelessWidget {
  const CustomDialogButton({
    required this.data,
    this.height,
    this.padding,
    super.key,
    this.onPressed,
  });

  final String data;

  final double? height;

  final EdgeInsetsGeometry? padding;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding == null ? EdgeInsets.zero : padding!,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Text(data),
      ),
    );
  }
}

class CustomDialogImage extends StatelessWidget {
  const CustomDialogImage({
    required this.data,
    this.padding,
    super.key,
  });

  final String data;

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: padding == null ? EdgeInsets.zero : padding!,
      child: Image.network(data),
    ));
  }
}


// @widgetbook.UseCase(
//   name: 'Dialog Type Battery',
//   type: CustomDialog,
// )
// CustomDialog dialogBattery(VoidCallback? onPressed) {
//   return CustomDialog(
//     title: const CustomDialogTitle(
//       data: "배터리 최적화 설정",
//       padding: EdgeInsets.only(top: 30),
//     ),
//     content: const Column(
//       children: [
//         CustomDialogText(
//           data: "(걸음 수, 적립 안정화)",
//           padding: EdgeInsets.only(top: 4, bottom: 25),
//         ),
//         CustomDialogText(
//           data: "원활한 포인트 적립을 위해, 캐시로 배터리 최적화를 꺼주세요.",
//           padding: EdgeInsets.only(left: 36, right: 36, bottom: 15),
//         ),
//         CustomDialogImage(
//           data: 'https://picsum.photos/250?image=9',
//           padding: EdgeInsets.only(left: 38, right: 38),
//         ),
//         CustomDialogText(
//           data: "1. 모든 애플리케이션 선택\n2. 캐시로 우측의 스위치를 눌러, 배터리 최적화 완료",
//           padding: EdgeInsets.only(left: 36, top: 15, right: 36, bottom: 25),
//         )
//       ],
//     ),
//     actions: CustomDialogButton(
//       data: "배터리 최적화 하기",
//       height: 58,
//       padding: const EdgeInsets.only(left: 15, right: 15, bottom: 17),
//       onPressed: onPressed,
//     ),
//   );
// }