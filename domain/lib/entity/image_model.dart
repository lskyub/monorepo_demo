import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
class ImageModel with _$ImageModel {
  factory ImageModel({
        @Default(0) int id,
        @Default("") String author,
        @Default(0) int width,
        @Default(0) int height,
        @Default("") String url,
        @Default("") String download_url
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}