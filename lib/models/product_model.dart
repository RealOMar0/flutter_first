class ProductModel {
  final String id;
  final String name;
  final String brand;
  final double price;
  final String image;
  final List<String> images;
  final String category;
  final String description;
  final String optionLabel;
  final List<String> options;
  bool isFav;

  ProductModel({
    required this.id,
    required this.name,
    required this.brand,
    required this.price,
    required this.image,
    List<String>? images,
    this.category = 'All',
    this.description = '',
    this.optionLabel = 'Edition',
    List<String>? options,
    this.isFav = false,
  })  : images = images ?? [image],
        options = options ?? const [];
}
