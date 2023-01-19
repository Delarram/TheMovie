import 'dart:convert';

import 'package:moviedp/data/model/base_model.dart';
import 'package:moviedp/data/model/get_now_playing_movie_model.dart';
import 'package:moviedp/data/vos/movie_vo.dart';
import 'package:moviedp/data/vos/now_playing_vo.dart';
import 'package:moviedp/resource/api_constant.dart';

class GetNowPlayingMovieModelImpl extends BaseModel with GetNowPlayingMovieModel{

  static final GetNowPlayingMovieModelImpl _singleton = GetNowPlayingMovieModelImpl._internal();

  factory GetNowPlayingMovieModelImpl() {
    return _singleton;
  }

  GetNowPlayingMovieModelImpl._internal();
  
  @override
  Future<List<NowPlayingVO>> getNowPlayingMovieList(int page) {
    return mTheApi.getNowPlayingMovies(apiKey,languageEnUs,"$page").then((value) {
      Map<String, dynamic> jsonMap = json.decode(value);
      print("nowplaying==>${jsonMap["data"]}");
      List<NowPlayingVO> nowPlaying = (jsonMap["data"] as List)
          .map((e) => NowPlayingVO.fromJson(e))
          .toList();
      return nowPlaying;
    });
  }

}