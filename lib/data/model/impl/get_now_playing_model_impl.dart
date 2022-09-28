import 'dart:convert';

import 'package:moviedp/data/model/base_model.dart';
import 'package:moviedp/data/model/get_now_playing_movie_model.dart';
import 'package:moviedp/data/vos/movie_vo.dart';
import 'package:moviedp/resource/api_constant.dart';

class GetNowPlayingMovieModelImpl extends BaseModel with GetNowPlayingMovieModel{

  static final GetNowPlayingMovieModelImpl _singleton = GetNowPlayingMovieModelImpl._internal();

  factory GetNowPlayingMovieModelImpl() {
    return _singleton;
  }

  GetNowPlayingMovieModelImpl._internal();
  
  @override
  Future<List<MovieVO>> getNowPlayingMovie(int page) {
    return mTheApi.getNowPlayingMovies(apiKey,languageEnUs,"1").then((value) {
      Map<String, dynamic> jsonMap = json.decode(value);
      print("shopListModel==>${jsonMap["data"]}");
      List<MovieVO> nowPlaying = (jsonMap["data"] as List)
          .map((e) => MovieVO.fromJson(e))
          .toList();
      return nowPlaying;
    });
  }

}