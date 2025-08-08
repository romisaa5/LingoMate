import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart' as retrofit;
import 'package:retrofit/retrofit.dart';
part 'api_services.g.dart';

@retrofit.RestApi(
  baseUrl: 'https://free-google-translator.p.rapidapi.com/external-api',
)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @retrofit.POST("/free-google-translator")
  @retrofit.FormUrlEncoded()
  @retrofit.Headers({
    'X-RapidAPI-Key': '7ba98c5873msh4e4e2b885494769p1754c0jsn29388c7a7ef7',
    'X-RapidAPI-Host': 'free-google-translator.p.rapidapi.com',
    'Content-Type': 'application/x-www-form-urlencoded',
  })
  Future<retrofit.HttpResponse> translate(
    @retrofit.Field("from") String from,
    @retrofit.Field("to") String to,
    @retrofit.Field("query") String query,
  );
}
