import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/items/plastic_price_item.dart';
import 'package:u_less_trash/models/plastic_price_model.dart';

import '../../../../models/paper_price_model.dart';

class PlasticPrice extends StatelessWidget {
  const PlasticPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView.builder(
          shrinkWrap: true,
          itemCount: plasticPriceModelList.length,
          itemBuilder: ((context, index) {
            final PlasticPriceModel plasticPriceModel = plasticPriceModelList[index];
            return PlasticPriceItem(plasticPriceModel: plasticPriceModel);
          })),
    );
  }
}