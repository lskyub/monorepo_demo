import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_0_model.freezed.dart';
part 'menu_0_model.g.dart';

@freezed
class Menu0Model with _$Menu0Model {
  factory Menu0Model({
    required List<int> datas,
    @Default(0) int step,
    @Default(0) int index,
  }) = _Menu0Model;

  factory Menu0Model.fromJson(Map<String, dynamic> json) =>
      _$Menu0ModelFromJson(json);
}

class Menu0State extends StateNotifier<Menu0Model> {
  Menu0State() : super(Menu0Model(datas: [2500, 1500, 1500, 1500], step: 2000));

  void changeDatas(List<int> value) {
    state = state.copyWith(datas: value);
  }

  void changeStep(int value) {
    state = state.copyWith(step: value);
  }

  void addStep(int value) {
    var step = state.step + value;
    var index = state.index;
    var bRange = 0;
    for (var i = 0; i < state.index; i++) {
      bRange += state.datas[i];
    }
    if (step - bRange > state.datas[state.index]) {
      index = ++index;
    }
    if (index >= state.datas.length) {
      index = state.datas.length - 1;
    }
    state = state.copyWith(
      step: step,
      index: index,
    );
  }
}
