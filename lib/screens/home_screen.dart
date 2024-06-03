import 'package:flutter/material.dart';
import 'package:simple_menu_app/models/category_menu_model.dart';
import 'package:simple_menu_app/models/food_grid_model.dart';
import 'package:simple_menu_app/widgets/category_menu_list_widget.dart';

import '../widgets/dialog_border.dart';
import '../widgets/food_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String resName = 'Burger Res';

  @override
  Widget build(BuildContext context) {
    List<CategoryMenuModel> categoryMenu = getCategoryMenu();
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/delicious-burger-Cover.jpg"),
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.orange,
                    child: CircleAvatar(
                      radius: 34,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        'assets/images/headerLogo.png',
                      ),
                    ),
                  ),
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 35, horizontal: 12),
                    // margin: EdgeInsets.all(12),
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 1.6,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              resName,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                restNameController.clear();
                                showAlertDialog(
                                  context: context,
                                  onTap: () {
                                    if (form.currentState!.validate()) {
                                      resName = restNameController.text;
                                      setState(() {});

                                      Navigator.pop(context);
                                    }
                                  },
                                );
                              },
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.orange,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 35,
                          child: CategoryNameWidget(
                            categoryMenuModel: categoryMenu,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FoodGrid(foodGridModel: getFoodGrid()),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: -50,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.orange,
                      child: CircleAvatar(
                        radius: 34,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          'assets/images/headerLogo.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<CategoryMenuModel> getCategoryMenu() {
    List<CategoryMenuModel> categoryMenuModel = [
      CategoryMenuModel(
        onTap: () {
          categoryName = 'Burgers';
          setState(() {});
        },
        title: 'Burgers',
      ),
      CategoryMenuModel(
        onTap: () {
          categoryName = 'Appetizers';
          setState(() {});
        },
        title: 'Appetizers',
      ),
      CategoryMenuModel(
        onTap: () {
          categoryName = 'Desserts';
          setState(() {});
        },
        title: 'Desserts',
      ),
      CategoryMenuModel(
        onTap: () {
          categoryName = 'Sauces';
          setState(() {});
        },
        title: 'Sauces',
      ),
      CategoryMenuModel(
        onTap: () {
          categoryName = 'Drinks';
          setState(() {});
        },
        title: 'Drinks',
      ),
    ];
    return categoryMenuModel;
  }
}
