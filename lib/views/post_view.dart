import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_and_cubit/cubits/post_cubit.dart';
import 'package:flutter_bloc_and_cubit/model/post.dart';

import '../items/item_post.dart';

class ViewPosts extends StatelessWidget {
  const ViewPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts"),
      ),
      body: BlocBuilder<PostCubit, List<Post>>(
        builder: (context, state) {
          if (state.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: state.length,
              itemBuilder: (context, index) {
                Post item = state[index];
                return ItemPost(item);
              },
            );
          }
        },
      ),
    );
  }
}
