import 'package:dio/dio.dart';
import 'package:moviedp/network/themovie_api.dart';
import '../resource/api_const.dart';

abstract class BaseModel {
  late TheMovieApi mTheApi;
  BaseModel() {
    final dio = Dio(
      BaseOptions(

          followRedirects: false,
          baseUrl: aBaseUrlDev,
          validateStatus: (status) {
            return status! < 300;
          },
          headers: {
            "Accept":"application/json"
          }
      ),
    );
    // dio.interceptors.add(alice.getDioInterceptor());
    mTheApi = TheMovieApi(dio);
  }
}
