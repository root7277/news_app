import 'package:flutter/material.dart';

import '../data/data.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  int indexCon = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: name.length,
      itemBuilder:(context, index){ 
        final item = name[index];     
      return InkWell(
        onTap: () {
          setState(() {
            indexCon = index;
          });
        },
        child: Container(
          margin: const EdgeInsets.only(left: 15),
          padding: const EdgeInsets.only(left: 16, top: 8, right: 16),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFF0F1FA), width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            color: indexCon == index ? const Color(0xFFFF8086): Colors.white,
          ),
          child: Text(item['name'], style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: indexCon == index ? Colors.white: Colors.black)),
        ),
      );
      } 
    );
  }
}