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
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, 'newsDetails_page'),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset('assets/image/image_5.png', fit: BoxFit.fill),
                const Positioned(
                  left: 8,
                  top: 8,
                  right: 8,
                  bottom: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('5 things to know about the conundrum of lupus', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)),
                      SizedBox(height: 49),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Matt Villano', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white)),
                          Text('Sunday, 9 May 2021', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white)),
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
}