import 'package:flutter/material.dart';
import 'package:u_less_trash/models/paper_price_model.dart';
import 'package:u_less_trash/pages/ADD%20TRASH/waste/waste%20price/paper_price.dart';

import '../utils/text_style.dart';

class PaperPriceItem extends StatelessWidget {
  final PaperPriceModel paperPriceModel;
  const PaperPriceItem({
    super.key,
    required this.paperPriceModel,
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
                              image: NetworkImage(paperPriceModel.image),
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
                              paperPriceModel.title,
                              style: titleCartItem,
                            ),
                            Text(
                              paperPriceModel.price,
                              style: hargaCartItem,
                            ),
                            Text(
                              paperPriceModel.date,
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
