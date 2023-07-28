class NotificationModel {
  final String authorN;
  final String urlToImageN;
  final String publishedAtN;
  final String descriptionN;
  final String contentN;

  NotificationModel({
    required this.authorN,
    required this.urlToImageN,
    required this.publishedAtN,
    required this.descriptionN,
    required this.contentN
  });


  factory NotificationModel.fromJson(Map <String, dynamic> json){
    return NotificationModel(
      authorN: json['author'], 
      urlToImageN: json['urlToImageN'], 
      publishedAtN: json['publishedAtN'], 
      descriptionN: json['descriptionN'],
      contentN: json['contentN']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'author': authorN,
      'urlToImage': urlToImageN,
      'publishedAt': publishedAtN,
      'description': descriptionN,
      'content': contentN
    };   
  }
}