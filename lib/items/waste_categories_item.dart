import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/models/waste_categories_model.dart';

class WasteCategoriesItem extends StatefulWidget {
  final WasteCategoriesModel wasteCategoriesModel;
  const WasteCategoriesItem({super.key, required this.wasteCategoriesModel});

  @override
  State<WasteCategoriesItem> createState() => _WasteCategoriesItemState();
}

class _WasteCategoriesItemState extends State<WasteCategoriesItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 124,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            widget.wasteCategoriesModel.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
