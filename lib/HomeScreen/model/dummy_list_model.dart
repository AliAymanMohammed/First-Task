class DummyNewsList {
  String? status;
  int? totalResult;
  List<Article>? data;

  DummyNewsList.fromJson(Map<dynamic, dynamic> json) {
    if (json['articles'] != null) {
      data = <Article>[];
      json['articles'].forEach((element) {
        data!.add(Article.fromJson(element));
      });
    }

    status = json['status'];
    totalResult = json['totalResults'];
  }
}

class Article {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;

  Article.fromJson(Map<dynamic, dynamic> json) {
    source = Source.fromJson(json['source']);
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
  }
}

class Source {
  String? name;

  Source.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }
}
