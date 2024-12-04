// Data Source Provider
import 'package:data/repository/image_repository_impl.dart';
import 'package:domain/usecase/image_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// UseCase Provider
final getImageList = Provider<GetImageList>((ref) {
  return GetImageList(ImageRepositoryImpl(ref));
});