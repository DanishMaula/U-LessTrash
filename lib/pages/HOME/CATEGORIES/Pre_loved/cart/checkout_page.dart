import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/pages/HOME/CATEGORIES/Pre_loved/filter/location.dart';
import 'package:dropdown_search/dropdown_search.dart';

import '../../../../../items/cart_item.dart';
import '../../../../../items/cart_item_checkout.dart';
import '../../../../../models/flea_category_model.dart';
import '../../../../../utils/text_style.dart';
import '../filter/filter_page.dart';

class CheckoutPage extends StatefulWidget {
  final String text;

  const CheckoutPage({
    super.key,
    required this.text,
  });

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  void getDataC() async {
    if (widget.text == 'checkout') {
      setState(() {
        locationUnClickedC = 'Select Locations';
      });
    } else {
      setState(() {
        locationClickedC = locationUnClickedC;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getDataC();
  }

  String locationClickedC =
      'Perumahan Nusa Loka Blok B2 No 2, \nJombang, Ciputat, Tangsel';
  String locationUnClickedC = 'Set Locations';

  @override
  Widget build(BuildContext context) {
    void sendData(context) {
      String textToSend = 'checkout';

      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MapSample(
                  text: textToSend,
                )),
      );
    }

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                icon: Image.asset('assets/images/ic_back.png'),
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
              ),
              Text(
                'Checkout',
                style: titleAppbar,
              ),
            ],
          )),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffE5E5E5))),
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
              _listCheckOut(),
              const SizedBox(
                height: 20,
              ),
              Text('Set Location', style: txtCheckoutTitle),
              const SizedBox(
                height: 5,
              ),

              // Set Location
              InkWell(
                onTap: () {
                  sendData(context);
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffE5E5E5)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            locationClickedC,
                            style: locationUnClickedC == 'Set Locations'
                                ? hintStyle
                                : currentLocationClicked,
                          ),
                          Image.asset(
                            'assets/images/ic_location.png',
                            width: 16,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Choose Delivery', style: txtCheckoutTitle),
              const SizedBox(
                height: 5,
              ),

              //COD
              DropdownButtonHideUnderline(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffE5E5E5)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ButtonTheme(
                    alignedDropdown: true,
                    child: DropdownButton(
                        elevation: 1,
                        iconDisabledColor: const Color(0xff2D8D7B),
                        iconEnabledColor: const Color(0xff2D8D7B),
                        style: txtCOD,
                        hint: Text(
                          'COD',
                          style: txtCOD,
                        ),
                        isExpanded: true,
                        iconSize: 40,
                        // ignore: prefer_const_literals_to_create_immutables
                        items: [
                          const DropdownMenuItem(
                            value: 1,
                            child: Text('COD'),
                          ),
                          const DropdownMenuItem(
                            value: 2,
                            child: Text('With Courier'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            value = value;
                          });
                        }),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Choose Courier', style: txtCheckoutTitle),
              const SizedBox(
                height: 5,
              ),
              DropdownButtonHideUnderline(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffE5E5E5)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton(
                      iconDisabledColor: const Color(0xff2D8D7B),
                      iconEnabledColor: const Color(0xff2D8D7B),
                      style: txtCOD,
                      hint: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: RichText(
                            text: TextSpan(
                              text: 'LeTra Driver (Rp. 30.000 - Today (',
                              style: txtCOD,
                              children: <TextSpan>[
                                TextSpan(text: 'COD', style: codCourier),
                                TextSpan(text: '))', style: txtCOD),
                              ],
                            ),
                          )),
                      isExpanded: true,
                      iconSize: 40,
                      // ignore: prefer_const_literals_to_create_immutables
                      items: null,
                      onChanged: null),
                ),
              ),
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
                        Text('Rp. 203.000', style: priceCartFill),
                      ],
                    ),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: const Color(0xff2D8D7B),
                        minWidth: 131,
                        height: 50,
                        onPressed: () {
                          if (locationClickedC ==
                              'Perumahan Nusa Loka Blok B2 No 2, \nJombang, Ciputat, Tangsel') {
                            Navigator.pushNamed(context, '/payment');
                          }
                        },
                        child: Text(
                          'PAY',
                          style: btnCheckOutCart,
                        ))
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _listCheckOut() {
  return ListView.builder(
    padding: const EdgeInsets.only(bottom: 20),
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) {
      FleaCategoryModel model2 = fleaCategoryList[index];
      return ItemCheckOut(
        fleaCategoryModel: model2,
      );
    },
    shrinkWrap: true,
    itemCount: fleaCategoryList.length - 6,
  );
}


