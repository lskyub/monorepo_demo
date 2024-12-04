import 'package:domain/usecase/image_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moblie_app/providers.dart';

class MainViewModel extends StateNotifier<String> {
  final GetImageList getImageList;

  MainViewModel(this.getImageList) : super("");

  Future<String> fetchUser() async {
    return await getImageList.call();
  }
}

// ViewModel Provider
final mainViewModelProvider =
    StateNotifierProvider<MainViewModel, String>((ref) {
  return MainViewModel(ref.watch(getImageList));
});
