
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../resource/api_constant.dart';

part 'movie_api.g.dart';

@RestApi(baseUrl: aBaseUrlDev)
abstract class MovieApi{
  factory MovieApi(Dio dio, {String baseUrl}) = _MovieApi;

  @GET(aGetNowPlayingMovie)//will be dynamic type so we have to give response datatype in future
  Future<String> getNowPlayingMovies(
      @Query(paramApiKey) String apiKey,
      @Query(paramLanguage) String language,
      @Query(paramPage) String page,
      );

}