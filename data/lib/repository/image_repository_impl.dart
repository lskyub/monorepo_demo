import 'package:data/datasources/image_data_source.dart';
import 'package:domain/repository/image_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageRepositoryImpl extends ImagesRepository {
  ImageRepositoryImpl(Ref ref) {
    _imageDataSource = ref.watch(imageDataSource);
  }

  late final ImageDataSource _imageDataSource;

  @override
  Future<String> getList() async {
    return _imageDataSource.fetchImageList();
  }
}
