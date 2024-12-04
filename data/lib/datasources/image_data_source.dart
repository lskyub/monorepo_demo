import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

final imageDataSource = Provider<ImageDataSource>((ref) {
  return ImageDataSource();
});


class ImageDataSource {
  Future<String> fetchImageList() async {
    final url = Uri.parse('https://picsum.photos/v2/list?');
    final response = await http.get(url); // GET 요청
    return response.body;
  }
}
