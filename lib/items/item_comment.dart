import 'package:flutter/material.dart';
import 'package:flutter_bloc_and_cubit/model/comment.dart';

class ItemComment extends StatelessWidget {
  final Comment data;

  const ItemComment(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      borderOnForeground: true,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(data.id.toString()),
        ),
        title: Text(data.name),
        subtitle: Text(data.body),
      ),
    );
  }
}
