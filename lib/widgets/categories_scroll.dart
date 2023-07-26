import 'package:flutter/material.dart';

class CategoriesScrollWidget extends StatelessWidget {
  const CategoriesScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, 'newsDetails_page'),
            child: Image.asset('assets/image/image_2.png', fit: BoxFit.fill)
          ),
        );
      }
    );
  }
}