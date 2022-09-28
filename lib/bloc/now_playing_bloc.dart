

import 'package:flutter/material.dart';

import '../data/model/get_now_playing_movie_model.dart';
import '../data/model/impl/get_now_playing_model_impl.dart';
import '../data/vos/movie_vo.dart';

class NowPlayingBloc extends ChangeNotifier{
  GetNowPlayingMovieModel nowPlayingMovieModel = GetNowPlayingMovieModelImpl();
   List<MovieVO>  nowPlayingMovieList = [];


  NowPlayingBloc(){
    getNowPlaying();
    notifyListeners();
  }

 void getNowPlaying(){
   nowPlayingMovieModel.getNowPlayingMovieList(1).then((value){
       nowPlayingMovieList = value;
       print("nowplayingmovieList==>$nowPlayingMovieList");
      notifyListeners();
   });
 }
}