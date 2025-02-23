class FoodModel {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  final List<Addon> availableAddons;

  FoodModel({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required List<Addon> availableAddons,
  }) : availableAddons = List.unmodifiable(availableAddons);
}

// Food category
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

// Addon model
class Addon {
  final String name;
  final double price;

  const Addon({
    required this.name,
    required this.price,
  });
}
