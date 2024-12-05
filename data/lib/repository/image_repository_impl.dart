import 'package:data/datasources/image_data_source.dart';
import 'package:domain/repository/image_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:domain/entity/image_model.dart';
import 'package:domain/entity/response.dart';

final imageRepository = Provider<ImagesRepository>((ref) {
  return ImageRepositoryImpl(ref);
});

class ImageRepositoryImpl extends ImagesRepository {
  // @override
  ImageRepositoryImpl(Ref ref) {
    _imageDataSource = ref.watch(imageDataSource);
  }

  late final ImageDataSource _imageDataSource;

  @override
  Future<Response<List<ImageModel>>> getList() async {
    return _imageDataSource.fetchImageList();
  }
}
