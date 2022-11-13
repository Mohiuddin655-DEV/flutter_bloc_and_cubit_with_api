import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_and_cubit/model/photo.dart';

import '../services/data_service.dart';

class PhotoCubit extends Cubit<List<Photo>> {
  final DataService dataService = DataService();

  PhotoCubit() : super([]);

  void get photos async => emit(await dataService.getPhotos());
}
