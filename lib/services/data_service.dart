import 'dart:convert';

import 'package:flutter_bloc_and_cubit/model/album.dart';
import 'package:flutter_bloc_and_cubit/model/comment.dart';
import 'package:flutter_bloc_and_cubit/model/photo.dart';
import 'package:flutter_bloc_and_cubit/model/post.dart';
import 'package:http/http.dart';

class DataService {
  final _baseUrl = "jsonplaceholder.typicode.com";

  Future<List<Album>> getAlbums() async {
    try {
      final uri = Uri.https(_baseUrl, "/albums");
      final response = await get(uri);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as List;
        final data = json.map((e) => Album.fromJson(e)).toList();
        return data;
      } else {
        throw Exception("Failed to load albums");
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Comment>> getComments() async {
    try {
      final uri = Uri.https(_baseUrl, "/comments");
      final response = await get(uri);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as List;
        final data = json.map((e) => Comment.fromJson(e)).toList();
        return data;
      } else {
        throw Exception("Failed to load comments");
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Photo>> getPhotos() async {
    try {
      final uri = Uri.https(_baseUrl, "/photos");
      final response = await get(uri);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as List;
        final data = json.map((e) => Photo.fromJson(e)).toList();
        return data;
      } else {
        throw Exception("Failed to load photos");
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Post>> getPosts() async {
    try {
      final uri = Uri.https(_baseUrl, "/posts");
      final response = await get(uri);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as List;
        final data = json.map((e) => Post.fromJson(e)).toList();
        return data;
      } else {
        throw Exception("Failed to load posts");
      }
    } catch (e) {
      rethrow;
    }
  }
}
