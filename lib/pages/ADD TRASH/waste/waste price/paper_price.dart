import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/items/paper_price_item.dart';
import 'package:u_less_trash/models/paper_price_model.dart';

class PaperPrice extends StatelessWidget {
  const PaperPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: paperPriceModelList.length,
          itemBuilder: ((context, index) {
            final PaperPriceModel paperPriceModel = paperPriceModelList[index];
            return PaperPriceItem(paperPriceModel: paperPriceModel);
          })),
    );
  }
}
