import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moblie_app/model/menu_0_model.dart';

final menu0Provider = StateNotifierProvider<Menu0State, Menu0Model>((ref) {
  return Menu0State();
});

class Menu0Progress extends ConsumerStatefulWidget {
  const Menu0Progress({required this.left, required this.right, super.key});

  final double left;

  final double right;

  @override
  ConsumerState<Menu0Progress> createState() => _Menu0ProgressState();
}

class _Menu0ProgressState extends ConsumerState<Menu0Progress>
    with AutomaticKeepAliveClientMixin {
  final ScrollController _controller = ScrollController();

  var moveX = 0.0;

  void _animateToIndex(double moveX) {
    _controller.animateTo(
      moveX,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  bool get wantKeepAlive => true; // 상태를 유지하도록 설정

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(menu0Provider);
    final max = provider.datas.reduce((value, next) => value + next);
    _animateToIndex((MediaQuery.of(context).size.width - 95) * provider.index);
    final isOver = max < provider.step;
    return ListView.builder(
      controller: _controller,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        if (index == 0) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    child: Text("${index + 1}번지"),
                  ),
                  progress(context, provider, index, 130)
                ],
              ),
              const Text(""),
            ],
          );
        } else if (provider.datas.length - 1 == index) {
          var padding = isOver ? 0.0 : widget.right;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      alignment: Alignment.center,
                      width: 40 + padding,
                      child: Padding(
                        padding: EdgeInsets.only(right: padding),
                        child: const Text("완주"),
                      )),
                  Visibility(
                    visible: isOver,
                    child: progress(context, provider, index, 80),
                  )
                ],
              ),
              Text("${provider.datas[index - 1]}"),
            ],
          );
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    child: Text("${index + 1}번지"),
                  ),
                  progress(context, provider, index, 130)
                ],
              ),
              Text("${provider.datas[index - 1]}"),
            ],
          );
        }
      },
      padding: EdgeInsets.only(left: widget.left),
      itemCount: provider.datas.length,
      scrollDirection: Axis.horizontal,
    );
  }

  SizedBox progress(
      BuildContext context, Menu0Model provider, int index, int padding) {
    final width = MediaQuery.of(context).size.width - padding;
    return SizedBox(
      width: width,
      child: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        tween: Tween<double>(
            begin: 0, end: getProgress(context, provider, index, width)),
        builder: (context, value, _) => LinearProgressIndicator(
          value: value,
          color: Colors.green,
          backgroundColor: const Color.fromARGB(255, 223, 223, 223),
        ),
      ),
    );
  }

  double getProgress(
      BuildContext context, Menu0Model provider, int index, double width) {
    var progress = 100.toDouble();
    if (provider.index == index) {
      if (index > 0) {
        var bRange = 0;
        for (var i = 0; i < index; i++) {
          bRange += provider.datas[i];
        }
        progress = (provider.step - bRange) / provider.datas[index];
      } else {
        progress = provider.step / provider.datas[index];
      }
    } else if (provider.index < index) {
      progress = 0;
    }
    return progress;
  }
}
