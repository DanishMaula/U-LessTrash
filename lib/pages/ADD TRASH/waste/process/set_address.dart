import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:u_less_trash/pages/HOME/CATEGORIES/Pre_loved/filter/location.dart';
import 'package:u_less_trash/utils/assets.dart';
import 'package:u_less_trash/utils/colors.dart';

import '../../../../utils/text_style.dart';

class SetAddress extends StatefulWidget {
  final String text;

  const SetAddress({super.key, required this.text});

  @override
  State<SetAddress> createState() => _SetAddressState();
}

class _SetAddressState extends State<SetAddress> {
  Color borderColor = const Color(0xffE5E5E5);
  String icon = 'assets/images/ic_location.png';

  void getDataS() async {
    if (widget.text == 'setAddress') {
      setState(() {
        locationUnSelectedA = locationSelectedA;
      });
    } else {
      setState(() {
        locationUnSelectedA = locationUnSelectedA;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getDataS();
  }

  var locationUnSelectedA = 'Select Location';
  var locationSelectedA =
      'Perumahan Nusa Loka Blok B2 No 2, \nJombang, Ciputat, Tangsel';

  @override
  Widget build(BuildContext context) {
    void sendDataA(context) {
      String textToSend = 'setAddress';

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
                  'Address',
                  style: titleAppbar,
                ),
              ],
            )),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Waste Pick Up Address',
                style: hargaCartItem,
              ),
              const SizedBox(height: 5),
              InkWell(
                onTap: () {
                  sendDataA(context);
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: borderColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            locationUnSelectedA,
                            style: locationUnSelectedA == 'Select Location'
                                ? txtDateStock
                                : currentLocationClicked,
                          ),
                          Image.asset(
                            icon,
                            width: 16,
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text('Additional Notes (Optional)', style: hargaCartItem),
              Container(
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
                        Text('(Street names, Benchmarks, and more...)',
                            style: txtDateStock),
                        const Icon(
                          Icons.edit,
                          color: AppColor.colorPrimary,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '0/150',
                    style: txtTermCondition,
                  )),
              const Spacer(
                flex: 6,
              ),
              MaterialButton(
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                height: 40,
                color: AppColor.colorPrimary,
                onPressed: () {
                  if (locationUnSelectedA == 'Select Location') {
                    setState(() {
                      borderColor = const Color(0xffFF3D00);
                      icon = 'assets/images/ic_error.png';
                    });
                  } else {
                    // animated dialog
                    showGeneralDialog(
                      barrierLabel: "Label",
                      barrierDismissible: true,
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionDuration: Duration(milliseconds: 700),
                      context: context,
                      pageBuilder: (context, anim1, anim2) {
                        return Align(
                          alignment: Alignment.center,
                          child: Wrap(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 12, right: 12),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 25, 20, 25),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          AppAsset.eartHeart,
                                          width: 106,
                                          height: 91,
                                        ),
                                        const SizedBox(height: 5),
                                        DefaultTextStyle(
                                            textAlign: TextAlign.center,
                                            style: txtFinishPayment,
                                            child: const Text(
                                                ('Your Waste Was Added \nSuccessfully'))),
                                        const SizedBox(height: 5),
                                        DefaultTextStyle(
                                            textAlign: TextAlign.center,
                                            style: txtDialogWaste,
                                            child: const Text(
                                                ('Wow, you are great, because you have become someone who cares about the health of the earth. Thank you for selling your trash on ReWaste'))),
                                        const SizedBox(height: 15),
                                        Wrap(
                                          children: [
                                            Container(
                                              child: MaterialButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                color: AppColor.colorPrimary,
                                                onPressed: () {
                                                  Navigator.pushNamed(
                                                      context, '/navBar');
                                                },
                                                child: Text(
                                                  'Back to Home',
                                                  style: setLocation,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        );
                      },
                      transitionBuilder: (context, anim1, anim2, child) {
                        return SlideTransition(
                          position:
                              Tween(begin: Offset(0, 1), end: Offset(0, 0))
                                  .animate(anim1),
                          child: child,
                        );
                      },
                    );
                  }
                },
                child: Text(
                  'Add Waste',
                  style: txtNextRefunds,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE5E5E5)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  child: Text(
                    'Cancel',
                    style: btnCancelAddress,
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              )
            ],
          ),
        ));
  }
}
