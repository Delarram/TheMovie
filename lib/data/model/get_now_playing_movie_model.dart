import 'package:moviedp/data/vos/now_playing_vo.dart';



abstract class GetNowPlayingMovieModel{

  Future<List<NowPlayingVO>> getNowPlayingMovieList(int page);

}