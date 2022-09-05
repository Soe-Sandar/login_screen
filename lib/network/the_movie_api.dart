import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'api_constants.dart';

part 'the_movie_api.g.dart';

@RestApi(baseUrl: BASE_URL_DIO)
abstract class TheMovieApi{
  factory TheMovieApi(Dio dio)=_TheMovieApi;

  @GET(ENDPOINT_GET_POPULAR)
  Future getPopularMovies(
      @Query(PARAM_API_KEY) String apiKey,
      @Query(PARAM_LANGUAGE) String language,
      @Query(PARAM_PAGE) String page
      );


}