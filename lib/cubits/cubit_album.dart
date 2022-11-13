import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_and_cubit/model/album.dart';
import 'package:flutter_bloc_and_cubit/services/data_service.dart';

class AlbumCubit extends Cubit<List<Album>> {
  final DataService dataService = DataService();

  AlbumCubit() : super([]);

  void get albums async => emit(await dataService.getAlbums());
}
