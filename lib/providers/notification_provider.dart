import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/models/notification_model.dart';


class NotificationProvider with ChangeNotifier {

  List<NotificationModel> notificarion = [];

  Future<void> getNotification() async {
    Uri url = Uri.parse('https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=0976d2f7b2f0440f91a340f9fdf134d9');

    http.Response response = await http.get(url);

    Map dataN = jsonDecode(response.body);

    List notificarionBosh = dataN['articles'];

    for(Map<String, dynamic> notificarionChiq in notificarionBosh){
      notificarion.add(NotificationModel.fromJson(notificarionChiq));
    }
    notifyListeners();
  }
}