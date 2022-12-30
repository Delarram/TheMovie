import '../vos/movie_vo.dart';

abstract class GetNowPlayingMovieModel{

  Future<List<MovieVO>> getNowPlayingMovieList(int page);

}