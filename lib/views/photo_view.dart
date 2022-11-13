import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_and_cubit/cubits/photo_cubit.dart';
import 'package:flutter_bloc_and_cubit/items/item_photo.dart';
import 'package:flutter_bloc_and_cubit/model/photo.dart';

class ViewPhotos extends StatelessWidget {
  const ViewPhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photos"),
      ),
      body: BlocBuilder<PhotoCubit, List<Photo>>(
        builder: (context, state) {
          if (state.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: state.length,
              itemBuilder: (context, index) {
                Photo item = state[index];
                return ItemPhoto(item);
              },
            );
          }
        },
      ),
    );
  }
}
