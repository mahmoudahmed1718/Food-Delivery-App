class FoodModel {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCatogry catogry;
  List<Addon> availbleAddon;

  FoodModel(
      {required this.name,
      required this.description,
      required this.imagePath,
      required this.price,
      required this.catogry,
      required this.availbleAddon});
}

// food catogry
enum FoodCatogry {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

// addon
class Addon {
  String name;
  double price;
  Addon({
    required this.name,
    required this.price,
  });
}
