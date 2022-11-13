import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_and_cubit/model/post.dart';

import '../services/data_service.dart';

class PostCubit extends Cubit<List<Post>> {
  final DataService dataService = DataService();

  PostCubit() : super([]);

  void get posts async => emit(await dataService.getPosts());
}
