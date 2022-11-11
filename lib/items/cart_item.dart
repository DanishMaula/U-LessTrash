import 'package:flutter/material.dart';
import 'package:u_less_trash/models/flea_category_model.dart';

import '../utils/text_style.dart';

class CartItem extends StatefulWidget {
  final FleaCategoryModel model;
  late bool isChecked;
  CartItem({super.key, required this.model, required this.isChecked});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          value: widget.isChecked,
          fillColor: MaterialStateProperty.all(
            const Color(0xff2D8D7B),
          ),
          shape: const CircleBorder(),
          onChanged: (bool? value) {
            setState(() {
              widget.isChecked = value!;
            });
          },
        ),

        //item cart
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 15,
            ),
            child: Wrap(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ]),
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
                              image: NetworkImage(widget.model.image),
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
                              widget.model.title,
                              style: titleCartItem,
                            ),
                            Text(
                              widget.model.harga,
                              style: hargaCartItem,
                            ),
                            Text(
                              widget.model.pengguna,
                              style: penggunaCartItem,
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
