import 'package:flutter/material.dart';
import 'package:u_less_trash/models/my_stock_models.dart';

import '../utils/text_style.dart';

class MyStockGrid extends StatelessWidget {
  final MyStockModel myStockModel;

  const MyStockGrid({super.key, required this.myStockModel});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
            width: 165,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffE5E5E5)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                        image: DecorationImage(
                          image: NetworkImage(
                            myStockModel.image,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      child: Wrap(
                        children: [
                          Container(
                            height: 30,
                            decoration: const BoxDecoration(
                              color: Color(0xff2D8D7B),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  myStockModel.timeAdded,
                                  style: titleGridWaktu,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(height: 5),
                      Text(myStockModel.title, style: titleGrid),
                      Text(myStockModel.price, style: titleGridHarga),
                      Text(myStockModel.pengguna, style: titleGridPengguna),
                      Text(myStockModel.alamat, style: titleGridAlamat),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
