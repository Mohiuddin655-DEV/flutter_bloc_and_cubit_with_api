import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_and_cubit/items/item_comment.dart';
import 'package:flutter_bloc_and_cubit/model/comment.dart';

import '../cubits/comment_cubit.dart';

class ViewComments extends StatelessWidget {
  const ViewComments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comments"),
      ),
      body: BlocBuilder<CommentCubit, List<Comment>>(
        builder: (context, state) {
          if (state.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: state.length,
              itemBuilder: (context, index) {
                Comment item = state[index];
                return ItemComment(item);
              },
            );
          }
        },
      ),
    );
  }
}
