import 'package:flutter/material.dart';

import '../models/category_menu_model.dart';

class CategoryNameWidget extends StatelessWidget {
  const CategoryNameWidget({super.key, required this.categoryMenuModel});

  final List<CategoryMenuModel> categoryMenuModel;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: categoryMenuModel[index].onTap,
          child: Container(
            width: 110,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: categoryMenuModel[index].title == categoryName
                  ? const Color(0xff9E9E9E).withOpacity(.8)
                  : Colors.transparent,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Text(
              categoryMenuModel[index].title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: categoryMenuModel[index].title == categoryName
                    ? Colors.black
                    : Colors.grey,
              ),
            ),
          ),
        );
      },
      itemCount: 5,
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        width: 20,
      ),
    );
  }
}
