import 'package:domain/entity/image_model.dart';
import 'package:domain/usecase/image_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moblie_app/providers.dart';

class MainViewModel extends StateNotifier<List<ImageModel>> {
  final GetImageList getImageList;

  MainViewModel(this.getImageList) : super([]);

  void fetchUser() async {
    var response = await getImageList.call();
    if (response.statusCode == 200) {
      state = response.model;
    }
  }
}

// ViewModel Provider
final mainViewModelProvider =
    StateNotifierProvider<MainViewModel, List<ImageModel>>((ref) {
  return MainViewModel(ref.watch(getImageList));
});
