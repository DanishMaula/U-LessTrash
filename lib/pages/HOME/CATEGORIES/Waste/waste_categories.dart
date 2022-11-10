import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/items/waste_categories_item.dart';
import 'package:u_less_trash/models/waste_categories_model.dart';
import 'package:u_less_trash/utils/text_style.dart';

class WasteCategories extends StatefulWidget {
  const WasteCategories({super.key});

  @override
  State<WasteCategories> createState() => _WasteCategoriesState();
}

class _WasteCategoriesState extends State<WasteCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // circle back button
        automaticallyImplyLeading: false,

        title: Row(
          children: [
          IconButton(
            icon: Image.asset('assets/images/ic_back.png'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
           Text('Waste Categories', style: titleAppbar,),
        ],
        )
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemBuilder: ((context, index) {
                  final WasteCategoriesModel wasteCategoriesModel =
                      wasteCategoriesList[index];
                  return WasteCategoriesItem(
                    wasteCategoriesModel: wasteCategoriesModel,
                  );
                }),
                itemCount: wasteCategoriesList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
