

import 'package:flutter/material.dart';

import '../data/model/get_now_playing_movie_model.dart';
import '../data/model/impl/get_now_playing_model_impl.dart';

import '../data/vos/now_playing_vo.dart';

class NowPlayingBloc extends ChangeNotifier{
  GetNowPlayingMovieModel nowPlayingMovieModel = GetNowPlayingMovieModelImpl();
   List<NowPlayingVO>  nowPlayingMovieList = [];


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