import 'package:flutter/material.dart';
import 'package:news_app/models/categories_scroll_model.dart';
import 'package:news_app/providers/categories_scroll_provider.dart';
import 'package:provider/provider.dart';

class CategoriesScrollWidget extends StatefulWidget {
  const CategoriesScrollWidget({super.key});

  @override
  State<CategoriesScrollWidget> createState() => _CategoriesScrollWidgetState();
}

class _CategoriesScrollWidgetState extends State<CategoriesScrollWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CategoriesNewsProvider>(
      builder: (context, provider, child){
        provider.getCategoriesNews();
        List<CategoriesNews> category = provider.category;
        
          return ListView.builder(
            itemCount: category.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: () => Navigator.pushNamed(context, 'newsDetails_page'),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.network(category[index].urlToImage, fit: BoxFit.fill),
                      Positioned(
                        left: 8,
                        top: 8,
                        right: 8,
                        bottom: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(category[index].title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)),
                            const SizedBox(height: 49),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(category[index].author, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white)),
                                Text(category[index].publishedAt, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white)),
                            ],)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          );
      }
    );
  }
}