import 'package:dio/dio.dart';
import 'package:moviedp/resource/api_const.dart';
import 'package:retrofit/http.dart';

part 'themovie_api.g.dart';

@RestApi(baseUrl: aBaseUrlDev)
abstract class TheMovieApi{
  factory TheMovieApi(Dio dio, {String baseUrl}) = _TheMovieApi;
}