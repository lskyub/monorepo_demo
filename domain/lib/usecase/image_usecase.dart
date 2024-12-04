import 'package:domain/repository/image_repository.dart';
import 'package:domain/entity/image_model.dart';
import 'package:domain/entity/response.dart';

class GetImageList {
  final ImagesRepository repository;

  GetImageList(this.repository);

  Future<Response<List<ImageModel>>> call() async {
    return await repository.getList();
  }
}
