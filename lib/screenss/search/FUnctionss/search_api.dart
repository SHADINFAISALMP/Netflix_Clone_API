import 'dart:convert';
import 'package:netflix/api_functions/api_functions.dart';
import 'package:netflix/screenss/value_notifier/valuenotifer.dart';
import 'package:http/http.dart' as http;

 searchMoviesAndTvShows(String query) async {
  isLoading.value = true;
  searchMovieTitles.value.clear();
  final url =
      "https://api.themoviedb.org/3/search/multi?query=$query&api_key=$apikey&include_adult=false&language=en-US";
  final uri = Uri.parse(url);
  final res = await http.get(uri);
  if (res.statusCode == 200) {
    final body = res.body;
    final items = jsonDecode(body);
    searchMovieTitles.value = items['results'];
    // print("shadin${searchMovieTitles.value}");
    // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
    searchMovieTitles.notifyListeners();
    isLoading.value = false;
    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
    isLoading.notifyListeners();
  }
}
