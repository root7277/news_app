import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/widgets/categories.dart';
import 'package:news_app/widgets/categories_scroll.dart';
import 'package:news_app/widgets/navbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 40, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 280,
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFF0F1FA), width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      color: Colors.white
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Dogecoin to the Moon...',
                              hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.grey),
                              border: InputBorder.none
                            ),
                          ),
                        ),
                        Icon(Icons.search),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, 'notification_page'),
                    child: Container(
                      width: 45,
                      height: 45,
                      padding: const EdgeInsets.only(left: 10, top: 8, right: 10, bottom: 8),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color(0xFFFF8086),
                      ),
                      child: SvgPicture.asset('assets/icons/bell.svg'),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Latest News', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black)),
                  SizedBox(
                    width: 70,
                    child: Row(
                      children: [
                        Text('See All', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xFF0080FF))),
                        Icon(Icons.arrow_forward, color: Color(0xFF0080FF)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 4, right: 7),
              child: SizedBox(
                height: 240,
                child: PageView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset('assets/image/image_5.png', fit: BoxFit.fill, height: 240),
                          const Positioned(
                            left: 8,
                            top: 80,
                            right: 8,
                            bottom: 8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('by Ryan Browne', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w800, color: Colors.white)),
                                Text('Crypto investors should be prepared to lose all their money, BOE governor says', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white)),
                                SizedBox(height: 39),
                                Text('“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.white)),
                              ],
                            ),
                          ),
                        ]
                      ),
                    );
                  }
                ),
              ),
            ),
            const SizedBox(height: 24),
            const SizedBox(
              height: 35,
              child: Expanded(
                child: CategoriesWidget(),
              ),
            ),
            const Expanded(
              child: CategoriesScrollWidget(),
            ),
          ],
        ),
        const Positioned(
          left: 0,
          right: 0,
          bottom: 25,
          child: NavBarWidget(),
        ),
       ],
      ),
    );
  }
}