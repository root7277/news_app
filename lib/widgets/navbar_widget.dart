import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 43, right: 43),
      child: Container(
        width: 289,
        height: 66,
        padding: const EdgeInsets.only(left: 40, top: 16, right: 40, bottom: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(32)),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Column(
                children: [
                  SvgPicture.asset('assets/icons/home.svg'),
                  const Text('Home', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xFF2E0505))),
                ],
              ),
            ),
            InkWell(
              child: Column(
                children: [
                  SvgPicture.asset('assets/icons/favorite.svg'),
                  const Text('Favorite', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xFF2E0505))),
                ],
              ),
            ),
            InkWell(
              child: Column(
                children: [
                  SvgPicture.asset('assets/icons/profile.svg'),
                  const Text('Profile', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xFF2E0505))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}