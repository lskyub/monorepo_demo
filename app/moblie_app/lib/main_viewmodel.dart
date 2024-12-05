import 'package:domain/entity/image_model.dart';
import 'package:domain/usecase/image_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainViewModel extends StateNotifier<List<ImageModel>> {
  final GetImageList getImageLists;

  MainViewModel(this.getImageLists) : super([]);

  void fetchUser() async {
    var response = await getImageLists.call();
    if (response.statusCode == 200) {
      state = response.model;
    }
  }
}

// ViewModel Provider
final mainViewModelProvider =
    StateNotifierProvider<MainViewModel, List<ImageModel>>((ref) {
      ref.watch(getImageList);
  return MainViewModel(ref.watch(getImageList));
});
