import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/text_style.dart';
import '../../HOME/CATEGORIES/Pre_loved/filter/location.dart';

class AddDetails extends StatefulWidget {
  final String text;

  const AddDetails({
    super.key,
    required this.text,
  });

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {
  void getDataD() async {
    if (widget.text == 'addDetails') {
      setState(() {
        locationUnSelectedD = locationSelectedD;
      });
    } else {
      setState(() {
        locationUnSelectedD = locationUnSelectedD;
      });
    }
  }

  @override
  void initState() {
    getDataD();
    super.initState();
  }

  String btnUnclicked = 'SAVE';
  String btnClicked = 'SELL IT';
  var locationUnSelectedD = 'Set a Pick Up Address';
  var locationSelectedD =
      'Perumahan Nusa Loka Blok B2 No 2, \nJombang, Ciputat, Tangsel';

  @override
  Widget build(BuildContext context) {
    void sendDataA(context) {
      String textToSend = 'addDetails';

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
        elevation: 1,
        title: Text(
          'Add Details',
          style: titleAppbar,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Reset',
              style: titleReset,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          icon: Image.asset(
            'assets/images/ic_back.png',
            height: 27,
            width: 27,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image.file(File)
              Container(
                height: 360,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/hasilp.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Category',
                      style: hargaCartItem,
                    ),
                    const SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: const Color(0xffE5E5E5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Computer Parts & Accessories',
                              style: txtTrashCategoty,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Color(0xff263238),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text('Title', style: hargaCartItem),
                    const SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: const Color(0xffE5E5E5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'White Mouse',
                              style: txtTrashCategoty,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Price',
                      style: hargaCartItem,
                    ),
                    const SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: const Color(0xffE5E5E5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rp. 80.000',
                              style: txtTrashCategoty,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text('Description', style: hargaCartItem),
                    const SizedBox(height: 5),
                    Wrap(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: const Color(0xffE5E5E5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                              style: txtTrashCategoty,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text('Location', style: hargaCartItem),
                    const SizedBox(height: 5),
                    InkWell(
                      onTap: () {
                        sendDataA(context);
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
                                  locationUnSelectedD,
                                  style: locationUnSelectedD ==
                                          'Set a Pick Up Address'
                                      ? txtDateStock
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
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: const Color(0xff2D8D7B),
        child: MaterialButton(
          onPressed: () {
            locationUnSelectedD == 'Set a Pick Up Address'
                ? print('select map ')
                : Navigator.pushNamed(context, '/addItemsSuccess');
          },
          child: Text(
            locationUnSelectedD == 'Set a Pick Up Address'
                ? btnUnclicked
                : btnClicked,
            style: bottomNavSave,
          ),
        ),
      ),
    );
  }
}
