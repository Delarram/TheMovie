import 'package:dio/dio.dart';
import 'package:moviedp/network/movie_api.dart';

import '../../resource/api_constant.dart';

abstract class BaseModel {
  late MovieApi mTheApi;
  BaseModel() {
    final dio = Dio(
      BaseOptions(

          followRedirects: false,
          baseUrl: aBaseUrlDev,
          validateStatus: (status) {
            return status! < 300;
          },
          headers: {}
      ),
    );
    // dio.interceptors.add(alice.getDioInterceptor());
    mTheApi = MovieApi(dio);
  }
}
