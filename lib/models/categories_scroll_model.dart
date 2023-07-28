class CategoriesNews {
  final String title;
  final String author;
  final String publishedAt;
  final String urlToImage;

  CategoriesNews({
    required this.title,
    required this.author,
    required this.publishedAt,
    required this.urlToImage
  });


  factory CategoriesNews.fromJson(Map<String, dynamic> json){
    return CategoriesNews(
      title: json['title'] as String, 
      author: json['author'] as String, 
      publishedAt: json['publishedAt'] as String,
      urlToImage: json['urlToImage'] as String
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
      'publishedAt': publishedAt,
      'urlToImage': urlToImage
    };
  }
}