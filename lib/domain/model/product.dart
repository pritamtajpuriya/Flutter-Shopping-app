// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product(
      {this.id,
      this.title,
      this.keywords,
      this.description,
      this.image,
      this.price,
      this.slug,
      this.favorte,
      this.category,
      this.noofreviews,
      this.avaragereview});

  int id;
  String title;
  String keywords;
  String description;
  String image;
  double price;
  String slug;
  bool favorte;
  String category;
  int noofreviews;
  double avaragereview;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
      id: json["id"],
      title: json["title"],
      keywords: json["keywords"],
      description: json["description"],
      image: json["image"],
      price: json["price"].toDouble(),
      slug: json["slug"],
      favorte: json["favorte"],
      category: json['category'],
      noofreviews: json['no_of_freviews'],
      avaragereview: json['avaragereview'].toDouble());

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "keywords": keywords,
        "description": description,
        "image": image,
        "price": price,
        "slug": slug,
        "favorte": favorte,
        "category": category
      };
}
