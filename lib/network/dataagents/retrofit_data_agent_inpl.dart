import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_login_screen/network/api_constants.dart';
import 'package:flutter_login_screen/network/dataagents/movie_data_agent.dart';
import 'package:flutter_login_screen/network/the_movie_api.dart';

class RetrofitDataAgentImpl extends MovieDataAgent{

  late TheMovieApi mApi;
  RetrofitDataAgentImpl(){
    final dio=Dio();
    mApi=TheMovieApi(dio);
  }
  @override
  void getPopularMovies(int page) {

    mApi.getPopularMovies(API_KEY, LANGUAGE_EN_US, page.toString())
        .then((value) => debugPrint("Result====>${value.toString()}"))
        .catchError((error)=>debugPrint(error.toString()));
  }

}