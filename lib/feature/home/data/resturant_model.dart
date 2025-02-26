import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food/core/utils/assets.dart';
import 'package:food/feature/cart/data/model/cart_model.dart';
import 'package:food/feature/home/data/food_model.dart';

class RestaurantModel extends ChangeNotifier {
  // list of food menu
  final List<FoodModel> _menu = [
    // Burgers
    FoodModel(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheese, lettuce, tomato, and a hint of onion.',
      imagePath: Assets.imagesBurgersBurger1,
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),
    FoodModel(
      name: 'BBQ Bacon Burger',
      description: 'Beef patty, smoked bacon, cheddar cheese, and BBQ sauce.',
      imagePath: Assets.imagesBurgersBurger2,
      price: 1.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra BBQ sauce', price: 0.49),
        Addon(name: 'Onion rings', price: 0.99),
        Addon(name: 'Cheddar cheese', price: 1.29),
      ],
    ),
    FoodModel(
      name: 'Spicy Jalapeño Burger',
      description:
          'Spicy beef patty, jalapeños, pepper jack cheese, and spicy mayo.',
      imagePath: Assets.imagesBurgersBurger3,
      price: 2.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra jalapeños', price: 0.79),
        Addon(name: 'Guacamole', price: 1.49),
        Addon(name: 'Spicy mayo', price: 0.99),
      ],
    ),
    FoodModel(
      name: 'Mushroom Swiss Burger',
      description:
          'Beef patty with sautéed mushrooms, Swiss cheese, and garlic aioli.',
      imagePath: Assets.imagesBurgersBurger4,
      price: 2.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra mushrooms', price: 0.99),
        Addon(name: 'Swiss cheese', price: 1.49),
        Addon(name: 'Garlic aioli', price: 0.79),
      ],
    ),
    FoodModel(
      name: 'Double Deluxe Burger',
      description:
          'Two beef patties, cheddar cheese, lettuce, tomato, and house sauce.',
      imagePath: Assets.imagesBurgersBurger5,
      price: 3.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra patty', price: 2.49),
        Addon(name: 'Egg', price: 1.29),
        Addon(name: 'Lettuce', price: 0.59),
      ],
    ),
    // Salads
    FoodModel(
      name: 'Caesar Salad',
      description:
          'Fresh romaine, parmesan cheese, croutons, and Caesar dressing.',
      imagePath: Assets.imagesSaladsSalad1,
      price: 3.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled chicken', price: 2.99),
        Addon(name: 'Extra parmesan', price: 0.79),
        Addon(name: 'Croutons', price: 0.49),
      ],
    ),
    FoodModel(
      name: 'Greek Salad',
      description:
          'Crisp lettuce, tomatoes, cucumbers, feta cheese, and olives.',
      imagePath: Assets.imagesSaladsSalad2,
      price: 3.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra feta', price: 1.29),
        Addon(name: 'Kalamata olives', price: 0.99),
        Addon(name: 'Cucumber slices', price: 0.69),
      ],
    ),
    FoodModel(
      name: 'Garden Salad',
      description:
          'Mixed greens, cherry tomatoes, cucumbers, and carrots with vinaigrette.',
      imagePath: Assets.imagesSaladsSalad3,
      price: 2.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Avocado', price: 1.99),
        Addon(name: 'Cherry tomatoes', price: 0.79),
        Addon(name: 'Sunflower seeds', price: 0.59),
      ],
    ),
    FoodModel(
      name: 'Cobb Salad',
      description:
          'Grilled chicken, bacon, eggs, avocado, and blue cheese crumbles.',
      imagePath: Assets.imagesSaladsSalad4,
      price: 4.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra bacon', price: 1.49),
        Addon(name: 'Hard-boiled egg', price: 0.99),
        Addon(name: 'Blue cheese crumbles', price: 1.29),
      ],
    ),
    FoodModel(
      name: 'Fruit Salad',
      description: 'A mix of fresh seasonal fruits.',
      imagePath: Assets.imagesSaladsSalad5,
      price: 3.29,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Honey drizzle', price: 0.79),
        Addon(name: 'Almond slices', price: 0.99),
        Addon(name: 'Greek yogurt', price: 1.49),
      ],
    ),

    // Sides
    FoodModel(
      name: 'French Fries',
      description: 'Crispy golden fries with a side of ketchup.',
      imagePath: Assets.imagesSidesSides1,
      price: 1.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese sauce', price: 0.99),
        Addon(name: 'Chili flakes', price: 0.49),
        Addon(name: 'Truffle oil', price: 1.29),
      ],
    ),
    FoodModel(
      name: 'Onion Rings',
      description: 'Crispy battered onion rings with dipping sauce.',
      imagePath: Assets.imagesSidesSides2,
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra sauce', price: 0.49),
        Addon(name: 'Parmesan dusting', price: 0.89),
        Addon(name: 'BBQ glaze', price: 0.99),
      ],
    ),
    FoodModel(
      name: 'Mozzarella Sticks',
      description: 'Crispy fried mozzarella sticks with marinara sauce.',
      imagePath: Assets.imagesSidesSides3,
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra marinara sauce', price: 0.79),
        Addon(name: 'Garlic butter', price: 0.69),
        Addon(name: 'Basil flakes', price: 0.49),
      ],
    ),
    FoodModel(
      name: 'Sweet Potato Fries',
      description: 'Crispy sweet potato fries with a touch of cinnamon.',
      imagePath: Assets.imagesSidesSides4,
      price: 2.29,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Honey drizzle', price: 0.79),
      ],
    ),
    FoodModel(
      name: 'Garlic Bread',
      description: 'Toasted bread with garlic butter and herbs.',
      imagePath: Assets.imagesSidesSides5,
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Honey drizzle', price: 0.79),
        Addon(name: 'Cinnamon sugar', price: 0.59),
        Addon(name: 'Chipotle mayo', price: 0.99),
      ],
    ),

    // Desserts
    FoodModel(
      name: 'Chocolate Cake',
      description: 'Rich chocolate cake with a creamy frosting.',
      imagePath: Assets.imagesDessertsDessert1,
      price: 2.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra chocolate drizzle', price: 0.79),
        Addon(name: 'Whipped cream', price: 0.59),
        Addon(name: 'Caramel sauce', price: 0.99),
      ],
    ),
    FoodModel(
      name: 'Ice Cream Sundae',
      description: 'Vanilla ice cream topped with chocolate sauce and nuts.',
      imagePath: Assets.imagesDessertsDessert2,
      price: 2.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra nuts', price: 0.59),
      ],
    ),
    FoodModel(
      name: 'Apple Pie',
      description: 'Classic apple pie with cinnamon and a flaky crust.',
      imagePath: Assets.imagesDessertsDessert3,
      price: 2.79,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra nuts', price: 0.59),
        Addon(name: 'Sprinkles', price: 0.49),
        Addon(name: 'Choco chips', price: 0.79),
      ],
    ),
    FoodModel(
      name: 'Brownie',
      description: 'Fudgy chocolate brownie with a crispy top.',
      imagePath: Assets.imagesDessertsDessert4,
      price: 2.19,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Vanilla ice cream scoop', price: 1.29),
        Addon(name: 'Caramel drizzle', price: 0.89),
        Addon(name: 'Cinnamon powder', price: 0.69),
      ],
    ),
    FoodModel(
      name: 'Strawberry Cheesecake',
      description: 'Creamy cheesecake topped with fresh strawberries.',
      imagePath: Assets.imagesDessertsDessert5,
      price: 3.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra fudge sauce', price: 0.89),
        Addon(name: 'Crushed walnuts', price: 0.99),
        Addon(name: 'Espresso shot', price: 1.49),
      ],
    ),

    // Drinks
    FoodModel(
      name: 'Lemonade',
      description: 'Refreshing homemade lemonade.',
      imagePath: Assets.imagesDrinksDrink1,
      price: 1.29,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra strawberries', price: 0.99),
        Addon(name: 'White chocolate drizzle', price: 0.79),
        Addon(name: 'Oreo crumbles', price: 0.89),
      ],
    ),
    FoodModel(
      name: 'Orange Juice',
      description: 'Freshly squeezed orange juice.',
      imagePath: Assets.imagesDrinksDrink2,
      price: 1.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Pulp', price: 0.49),
        Addon(name: 'Ice cubes', price: 0.29),
        Addon(name: 'Vitamin C boost', price: 0.99),
      ],
    ),
    FoodModel(
      name: 'ice lattie',
      description: 'Refreshing Lattie.',
      imagePath: Assets.imagesDrinksDrink3,
      price: 1.29,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Mint', price: 0.49),
      ],
    ),
    FoodModel(
      name: 'Iced Coffee',
      description: 'Chilled coffee with milk and sugar.',
      imagePath: Assets.imagesDrinksDrink4,
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Caramel syrup', price: 0.79),
        Addon(name: 'Extra espresso shot', price: 1.29),
        Addon(name: 'Cinnamon sprinkle', price: 0.49),
      ],
    ),
    FoodModel(
      name: 'Milkshake',
      description: 'Creamy vanilla milkshake with whipped cream.',
      imagePath: Assets.imagesDrinksDrink5,
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Vanilla syrup', price: 0.79),
        Addon(name: 'Cold foam', price: 1.19),
        Addon(name: 'Coconut milk', price: 0.99),
      ],
    ),
  ];

  /*
  G E E T E R
  */
  List<FoodModel> get menu => _menu;

/*

O P P E R A T I O N S

*/
// user cart
  final List<CartModel> _cart = [];
// add to cart
  void addTocart(FoodModel food, List<Addon> selectedAddon) {
    CartModel? cartModel = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.foodModel == food;
      bool isSameAddon =
          ListEquality().equals(item.selectedAddon, selectedAddon);
      return isSameAddon && isSameFood;
    });
    // if item arldeay exsist
    if (cartModel != null) {
      _cart.add(CartModel(foodModel: food, selectedAddon: selectedAddon));
    }
    notifyListeners();
  }

// romove from cart
  void removeFromCart(CartModel cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantaty > 1) {
        _cart[cartIndex].quantaty--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
  }
// get total price of cart

  double getTotalPrice() {
    double totalPrice = 0;
    for (CartModel cartItem in _cart) {
      double itemTotal = cartItem.foodModel.price;

      for (Addon addon in cartItem.selectedAddon) {
        itemTotal += addon.price;
      }
      totalPrice += itemTotal * cartItem.quantaty;
    }
    return totalPrice;
  }

// get total number of item of cart

// clear cart

/*

H E L P P E R

*/

// genert a recipt

// format double value into money

//format list of addont string summy
}
