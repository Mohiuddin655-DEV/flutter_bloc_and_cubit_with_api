import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_and_cubit/model/comment.dart';
import 'package:flutter_bloc_and_cubit/model/post.dart';

import '../services/data_service.dart';

class CommentCubit extends Cubit<List<Comment>> {
  final DataService dataService = DataService();

  CommentCubit() : super([]);

  void get comments async => emit(await dataService.getComments());
}
