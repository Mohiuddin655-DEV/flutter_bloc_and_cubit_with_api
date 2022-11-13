import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_and_cubit/cubits/cubit_album.dart';
import 'package:flutter_bloc_and_cubit/items/item_album.dart';
import 'package:flutter_bloc_and_cubit/model/album.dart';

class ViewAlbums extends StatelessWidget {
  const ViewAlbums({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Albums"),
      ),
      body: BlocBuilder<AlbumCubit, List<Album>>(
        builder: (context, state) {
          if (state.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: state.length,
              itemBuilder: (context, index) {
                Album item = state[index];
                return ItemAlbum(item);
              },
            );
          }
        },
      ),
    );
  }
}
