import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../items/cart_item.dart';
import '../../../../../models/flea_category_model.dart';
import '../../../../../utils/text_style.dart';
import 'checkout_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isChecked = false;
  String priceEmpty = 'Rp. 0';
  String price = 'Rp. 100.000';
  String btnEmpty = 'Buy Now';
  String btnFill = 'Buy Now (2)';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                icon: Image.asset('assets/images/ic_back.png'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                'Cart',
                style: titleAppbar,
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: isChecked,
                    fillColor: MaterialStateProperty.all(
                      const Color(0xff2D8D7B),
                    ),
                    shape: const CircleBorder(),
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
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
                      child: Container(
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
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                              child: CircleAvatar(
                                minRadius: 30,
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Fariz Setiawan',
                                  style: titleCart,
                                ),
                                Text(
                                  'Ciputat, Tangerang Indonesia',
                                  style: alamatCart,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              _listView1(isChecked),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: false,
                    fillColor: MaterialStateProperty.all(
                      const Color(0xff2D8D7B),
                    ),
                    shape: const CircleBorder(),
                    onChanged: (bool? value) {},
                  ),
                  //item cart
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 15,
                      ),
                      child: Container(
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
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                              child: CircleAvatar(
                                minRadius: 30,
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Zifa Haifa',
                                  style: titleCart,
                                ),
                                Text(
                                  'Cipondoh, Tangerang Indonesia',
                                  style: alamatCart,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              _listView2(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Wrap(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffE5E5E5))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price', style: titlePriceCart),
                        Text(
                          isChecked == true ? price : priceEmpty,
                          style: isChecked == true
                              ? priceCartFill
                              : priceCartEmpty,
                        ),
                      ],
                    ),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: isChecked == true
                            ? const Color(0xff2D8D7B)
                            : const Color(0xffE5E5E5),
                        minWidth: 131,
                        height: 50,
                        onPressed: () {
                          if (isChecked == true) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CheckoutPage()),
                            );
                          }
                        },
                        child: Text(
                          isChecked == true ? btnFill : btnEmpty,
                          style: isChecked == true
                              ? btnCheckOutCart
                              : btnCheckOutCartEmpty,
                        ))
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

// List for Fariz
Widget _listView1(bool value) {
  return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        FleaCategoryModel model1 = fleaCategoryList[index];
        return CartItem(model: model1, isChecked: value);
      },
      shrinkWrap: true,
      itemCount: fleaCategoryList.length - 6);
}

// list for Haifa
Widget _listView2() {
  return ListView.builder(
    padding: const EdgeInsets.only(bottom: 20),
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) {
      FleaCategoryModel model2 = fleaCategoryList[index];
      return CartItem(model: model2, isChecked: false);
    },
    shrinkWrap: true,
    itemCount: fleaCategoryList.length - 6,
  );
}
