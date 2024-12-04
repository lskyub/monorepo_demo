import 'package:domain/entity/image_model.dart';
import 'package:domain/entity/response.dart';

abstract class ImagesRepository {
  Future<Response<List<ImageModel>>> getList();
}