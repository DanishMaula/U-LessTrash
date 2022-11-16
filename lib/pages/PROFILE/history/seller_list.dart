import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/items/seller_item.dart';
import 'package:u_less_trash/models/my_history_seller.dart';

class SellerList extends StatelessWidget {
  const SellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemBuilder: ((context, index) {
        final SellerModelHistory sellerModelHistory = sellerHistoryList[index];
        return SellerItem(
          sellerModelHistory: sellerModelHistory,
        );
      }),
      itemCount: sellerHistoryList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    ));
  }
}