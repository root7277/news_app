import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:news_app/models/categories_scroll_model.dart';

class CategoriesNewsProvider with ChangeNotifier {

  List<CategoriesNews> category = [];
  String status = 'start';

  Future<void> getCategoriesNews() async {
    Uri url = Uri.parse('https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=0976d2f7b2f0440f91a340f9fdf134d9');
    
    http.Response response = await http.get(url);

    Map data = jsonDecode(response.body);

    List categorysBosh = data['articles'];

    for(Map<String, dynamic> categoryChiq in categorysBosh){
      category.add(CategoriesNews.fromJson(categoryChiq));
    }
    // print('data has been fetched');
    status = 'done';
    notifyListeners();
  }

}