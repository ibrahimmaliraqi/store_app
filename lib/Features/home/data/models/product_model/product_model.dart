class ProductModel {
  String category;
  String description;
  String image;
  String name;
  double rating;

  ProductModel({
    required this.category,
    required this.description,
    required this.image,
    required this.name,
    required this.rating,
  });
  factory ProductModel.fromJson(data) {
    return ProductModel(
      category: data['category'],
      description: data['description'],
      image: data['image'],
      name: data['name'],
      rating: data['rating'],
    );
  }
}
