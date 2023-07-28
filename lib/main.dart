import 'package:flutter/material.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:news_app/pages/news_details_page.dart';
import 'package:news_app/pages/notification.dart';
import 'package:news_app/pages/search_page.dart';
import 'package:news_app/providers/categories_scroll_provider.dart';
import 'package:news_app/providers/notification_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CategoriesNewsProvider()),
        ChangeNotifierProvider(create: (context) => NotificationProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home_page',
        routes: {
          'home_page':(context) => const HomePage(),
          'search_page':(context) => const SearchPage(),
          'newsDetails_page':(context) => const NewsDetailsPage(),
          'notification_page':(context) => const NotificationPage()
        },
      )
    );
  }
}