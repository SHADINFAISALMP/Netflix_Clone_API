import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix/screenss/new_hot/date_convert.dart';
import 'package:netflix/screenss/value_notifier/valuenotifer.dart';

String apikey = "60bb087ce9dac9f60c46402d44e7dcfa";
String acesstokenauth =
    "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2MGJiMDg3Y2U5ZGFjOWY2MGM0NjQwMmQ0NGU3ZGNmYSIsInN1YiI6IjY1ZTAxMWQyMmQ1MzFhMDE4NWJmN2ZhZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.wValHWF2WfnDgpD_D3SLsJqr9GLBbQgYJXISUmDyIVQ";
String imageUrl = "https://image.tmdb.org/t/p/w500";

loadpopularmovies() async {
  final url =
      "https://api.themoviedb.org/3/discover/movie?api_key=$apikey&language=en-US&sort_by=popularity.desc";
  final uri = Uri.parse(url);
  final res = await http.get(uri);

  if (res.statusCode == 200) {
    final body = res.body;
    final items = jsonDecode(body);
    popularmovies.value = items['results'];
    // print(popularmovies.value);
  }
}

loadtrendingmovies() async {
  final url =
      "https://api.themoviedb.org/3/trending/movie/day?api_key=$apikey&language=en-US";
  final uri = Uri.parse(url);
  final res = await http.get(uri);

  if (res.statusCode == 200) {
    final body = res.body;
    final items = jsonDecode(body);
    trendingmovies.value = items['results'];
    // print(trendingmovies.value);
  }
}

loadtoprated() async {
  final url =
      "https://api.themoviedb.org/3/movie/top_rated?api_key=$apikey&language=en-US";
  final uri = Uri.parse(url);
  final res = await http.get(uri);

  if (res.statusCode == 200) {
    final body = res.body;
    final items = jsonDecode(body);
    topratedmovies.value = items['results'];
    // print(topratedmovies.value);
  }
}

loadupcomingmovies() async {
  final url =
      "https://api.themoviedb.org/3/movie/upcoming?api_key=$apikey&language=en-US";
  final uri = Uri.parse(url);
  final res = await http.get(uri);

  if (res.statusCode == 200) {
    final body = res.body;
    final items = jsonDecode(body);
    upcomingmovies.value = items['results'];
    for (var i = 0; i < upcomingmovies.value.length; i++) {
      final d = upcomingmovies.value[i]['release_date'];
      formatDate(d);
    }
    // print(upcomingmovies.value);
  }
}

loadtopratedtvshows() async {
  final url =
      "https://api.themoviedb.org/3/tv/top_rated?api_key=$apikey&language=en-US";
  final uri = Uri.parse(url);
  final res = await http.get(uri);

  if (res.statusCode == 200) {
    final body = res.body;
    final items = jsonDecode(body);
    topratedtvshows.value = items['results'];
    // print(topratedtvshows.value);
  }
}

loadpopulartvshows() async {
  final url =
      "https://api.themoviedb.org/3/tv/popular?api_key=$apikey&language=en-US";
  final uri = Uri.parse(url);
  final res = await http.get(uri);

  if (res.statusCode == 200) {
    final body = res.body;
    final items = jsonDecode(body);
    populartvshows.value = items['results'];
    // print(populartvshows.value);
  }
}
