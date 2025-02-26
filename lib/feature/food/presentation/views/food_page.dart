import 'package:flutter/material.dart';
import 'package:food/core/widgets/my_button.dart';
import 'package:food/feature/home/data/food_model.dart';

class FoodPage extends StatefulWidget {
  FoodPage({super.key, required this.food}) {
    //iintialize selected Addon
    for (Addon addon in food.availableAddons) {
      selectedAddon[addon] = false;
    }
  }
  final FoodModel food;
  final Map<Addon, bool> selectedAddon = {};

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.food.imagePath),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.food.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    r'$' + widget.food.price.toString(),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 14),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    widget.food.description,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Divider(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Add-ons',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  // addons
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.secondary),
                        borderRadius: BorderRadius.circular(8)),
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: widget.food.availableAddons.length,
                        itemBuilder: (context, index) {
                          // get indivudals addons
                          Addon addon = widget.food.availableAddons[index];
                          return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(r'$' + addon.price.toString(),
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  )),
                              value: widget.selectedAddon[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddon[addon] = value!;
                                });
                              });
                        }),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: MyButton(ontab: () {}, text: 'add to cart'),
            ),
          ],
        ),
      ),
    );
  }
}
