import 'dart:convert';

import 'package:domain/entity/image_model.dart';
import 'package:domain/entity/response.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

final imageDataSource = Provider<ImageDataSource>((ref) {
  return ImageDataSource();
});

class ImageDataSource {
  Future<Response<List<ImageModel>>> fetchImageList() async {
    final url = Uri.parse('https://picsum.photos/v2/list?');
    final response = await http.get(url); // GET 요청
    List<dynamic> tList = jsonDecode(response.body);
    List<ImageModel> list =
        tList.map((json) => ImageModel.fromJson(json)).toList();
    return Response(response.statusCode, list);
  }
}
