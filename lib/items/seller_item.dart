import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/models/my_history_seller.dart';
import 'package:u_less_trash/models/seller_model.dart';

import '../utils/text_style.dart';

class SellerItem extends StatelessWidget {
  final SellerModelHistory sellerModelHistory;
  const SellerItem({
    super.key,
    required this.sellerModelHistory,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //item cart
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 20,
              left: 20,
            ),
            child: Wrap(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0xffE5E5E5)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(sellerModelHistory.image),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              sellerModelHistory.title,
                              style: titleCartItem,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    sellerModelHistory.price,
                                    style: hargaCartItem,
                                  ),
                                  Text(
                                    'Sent',
                                    style: txtSentHistory,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              sellerModelHistory.date,
                              style: txtDateStock,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
