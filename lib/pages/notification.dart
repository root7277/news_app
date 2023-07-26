import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 30),
            child: Row(
              children: [
                IconButton(onPressed: () => Navigator.pop(context, 'home_page'), icon: const Icon(Icons.arrow_back_ios)),
                const SizedBox(width: 80),
                const Text('Hot Updates', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xFFFF3A44))),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              // scrollDirection: Axis.vertical,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/image/image_3.png'),
                      const SizedBox(height: 16),
                      const Text('Monday, 10 May 2021', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Color(0xFF2E0505))),
                      const SizedBox(height: 10),
                      const Text('WHO classifies triple-mutant Covid variant from India as global health risk', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black)),
                      const SizedBox(height: 10),
                      const SizedBox(
                        height: 84,
                        width: 343,
                        child: Text(
                          'A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a...Read More',
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),
                        ),
                      ),
                      const Text('Published by Berkeley Lovelace Jr.', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xFF2E0505))),
                      const SizedBox(height: 24),
                    ],
                  ),
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}