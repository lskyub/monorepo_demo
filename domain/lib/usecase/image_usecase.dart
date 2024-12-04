import 'package:domain/repository/image_repository.dart';

class GetImageList {
  final ImagesRepository repository;

  GetImageList(this.repository);

  Future<String> call() async {
    return await repository.getList();
  }
}