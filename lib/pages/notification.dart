import 'package:flutter/material.dart';
import 'package:news_app/models/notification_model.dart';
import 'package:news_app/providers/notification_provider.dart';
import 'package:provider/provider.dart';

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
          Consumer<NotificationProvider>(
            builder: (context, provider, child){
              provider.getNotification();
              List<NotificationModel> notificarion = provider.notificarion;

              return Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(notificarion[index].urlToImageN),
                          const SizedBox(height: 16),
                          Text(notificarion[index].publishedAtN, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Color(0xFF2E0505))),
                          const SizedBox(height: 10),
                          Text(notificarion[index].descriptionN, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black)),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 84,
                            width: 343,
                            child: Text(
                              notificarion[index].contentN,
                              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),
                            ),
                          ),
                          Text('Published by ${notificarion[index].authorN}.', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xFF2E0505))),
                          const SizedBox(height: 24),
                        ],
                      ),
                    );
                  }
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}