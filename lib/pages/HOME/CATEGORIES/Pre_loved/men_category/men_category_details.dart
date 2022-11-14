import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:u_less_trash/models/men_category_model.dart';
import 'package:u_less_trash/pages/CHAT/chat_page.dart';
import 'package:u_less_trash/pages/HOME/CATEGORIES/Pre_loved/cart/cart_page.dart';
import 'package:u_less_trash/utils/text_style.dart';

class MenCategoryDetails extends StatelessWidget {
  final MenCategoryModel menCategoryModel;

  const MenCategoryDetails({super.key, required this.menCategoryModel});

  @override
  Widget build(BuildContext context) {
    // Snack bar
    final SnackBar snackBar = SnackBar(
      backgroundColor: Colors.black.withOpacity(0.8),
      content: SizedBox(
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Added to Cart',
                style: sbTitleClose,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // remove snackbar
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    },
                    child: Text(
                      'Close',
                      style: sbTitleClose,
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const CartPage();
                      }));
                    },
                    child: Text(
                      'See',
                      style: sbBtnSee,
                    ),
                  ),
                ],
              )
            ],
          )),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );

    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffE5E5E5)),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Text Seller
            GestureDetector(
              onTap: () {
                final MenCategoryModel menCategoryModel = menCategoryList[0..toString()];
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  ChatPage(menCategoryModel: menCategoryModel,)));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: const Color(0xffE5E5E5)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/ic_chat_detail.png',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Chat Seller',
                        style: chatSeller,
                      )
                    ],
                  ),
                ),
              ),
            ),

            // add to cart
            GestureDetector(
              onTap: () {
                // show snackbar
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: const Color(0xffE5E5E5)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/ic_cart_detail.png',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Add To Cart',
                        style: chatSeller,
                      )
                    ],
                  ),
                ),
              ),
            ),

            //buy now
            MaterialButton(
              height: 40,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: const Color(0xff2D8D7B),
              onPressed: () {},
              child: Text(
                'Buy Now',
                style: btnBuyNow,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Image.network(
                menCategoryModel.image,
                fit: BoxFit.cover,
                height: 360,
                width: MediaQuery.of(context).size.width,
              ),
              //create back button
              Positioned(
                top: 30,
                left: 10,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/ic_back.png',
                      width: 35,
                      height: 35,
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menCategoryModel.title,
                  style: titleDetail,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  menCategoryModel.harga,
                  style: hargaDetail,
                ),
                const SizedBox(height: 5),
                Text(
                  menCategoryModel.pengguna,
                  style: penggunaDetail,
                ),
                Text(
                  menCategoryModel.alamat,
                  style: penggunaDetail,
                ),
                const SizedBox(height: 10),
                Text(
                  'Description',
                  style: titleDesc,
                ),
                Text(
                  'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: descContent,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
