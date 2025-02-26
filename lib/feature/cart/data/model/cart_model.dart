import 'package:food/feature/home/data/food_model.dart';

class CartModel {
  FoodModel foodModel;
  List<Addon> selectedAddon;
  int quantaty;

  CartModel(
      {required this.foodModel,
      required this.selectedAddon,
      this.quantaty = 1});

  double totalPrice() {
    double addonPrice =
        selectedAddon.fold(0, (sum, addon) => sum + addon.price);
    return addonPrice + foodModel.price * quantaty;
  }
}
