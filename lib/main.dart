import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_and_cubit/cubits/comment_cubit.dart';
import 'package:flutter_bloc_and_cubit/cubits/cubit_album.dart';
import 'package:flutter_bloc_and_cubit/cubits/photo_cubit.dart';
import 'package:flutter_bloc_and_cubit/cubits/post_cubit.dart';
import 'package:flutter_bloc_and_cubit/views/album_view.dart';
import 'package:flutter_bloc_and_cubit/views/comment_view.dart';
import 'package:flutter_bloc_and_cubit/views/photo_view.dart';

import 'views/post_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: getView("posts"),
    );
  }
}

Widget getView(String loadingDataType) {
  if (loadingDataType == "albums") {
    return BlocProvider(
      create: (context) => AlbumCubit()..albums,
      child: const ViewAlbums(),
    );
  } else if (loadingDataType == "photos") {
    return BlocProvider(
      create: (context) => PhotoCubit()..photos,
      child: const ViewPhotos(),
    );
  } else if (loadingDataType == "comments") {
    return BlocProvider<CommentCubit>(
      create: (context) => CommentCubit()..comments,
      child: const ViewComments(),
    );
  } else {
    return BlocProvider<PostCubit>(
      create: (context) => PostCubit()..posts,
      child: const ViewPosts(),
    );
  }
}
