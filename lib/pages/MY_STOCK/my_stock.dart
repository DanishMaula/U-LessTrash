import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/models/my_stock_models.dart';
import 'package:u_less_trash/utils/text_style.dart';

import '../../items/my_stock_item.dart';

class MyStock extends StatelessWidget {
  const MyStock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Text(
          'My Stock',
          style: titleAppbar,
        ),
      ),
      body: Column(
        children: [
          ListView.builder(
            itemBuilder: ((context, index) {
              final MyStockModel myStockModel = myStockList[index];
              return MyStockItem(
                myStockModel: myStockModel,
              );
            }),
            itemCount: myStockList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          )
        ],
      ),
    );
  }
}
