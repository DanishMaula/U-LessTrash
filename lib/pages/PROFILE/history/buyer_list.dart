import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/items/buyer_item.dart';
import 'package:u_less_trash/models/my_history_buyer.dart';

import '../../../utils/text_style.dart';

class BuyerList extends StatelessWidget {
  const BuyerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemBuilder: ((context, index) {
        final BuyerModel buyerModel = buyerList[index];
        return BuyerItem(
          buyerModel: buyerModel,
        );
      }),
      itemCount: buyerList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    ));
  }
}
