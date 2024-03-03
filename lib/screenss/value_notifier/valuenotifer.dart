import 'package:flutter/material.dart';

ValueNotifier<List<dynamic>> trendingmovies = ValueNotifier([]);
ValueNotifier<List<dynamic>> topratedmovies = ValueNotifier([]);
ValueNotifier<List<dynamic>> upcomingmovies = ValueNotifier([]);
ValueNotifier<List<dynamic>> popularmovies = ValueNotifier([]);
ValueNotifier<List<dynamic>> topratedtvshows = ValueNotifier([]);
ValueNotifier<List<dynamic>> populartvshows = ValueNotifier([]);
// ValueNotifier<List<dynamic>> searchTvShowAndMoviesTitles = ValueNotifier([]);
ValueNotifier<bool> isLoading = ValueNotifier(false);
ValueNotifier<List<dynamic>> searchMovieTitles = ValueNotifier([]);
// ValueNotifier<List<dynamic>> searchTvShowTitles = ValueNotifier([]);