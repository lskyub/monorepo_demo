import 'package:data/repository/image_repository_impl.dart';
import 'package:domain/repository/image_repository.dart';
import 'package:domain/entity/image_model.dart';
import 'package:domain/entity/response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getImageList = Provider<GetImageList>((ref) {
  return GetImageList(ref.watch(imageRepository));
});

class GetImageList {
  final ImagesRepository repository;

  GetImageList(this.repository);

  Future<Response<List<ImageModel>>> call() async {
    return await repository.getList();
  }
}
