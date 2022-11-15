import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../../../../utils/text_style.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    void SelectRadio(String value) {
      setState(() {});
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
                  Navigator.pop(context);
                },
              ),
              Text(
                'Payment',
                style: titleAppbar,
              ),
            ],
          )),
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
                          if (isChecked == true) {
                            Navigator.pushNamed(context, '/paymentFinish');
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: const Color(0xffE5E5E5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/ic_ovo.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'OVO',
                          style: txtTitlePayment,
                        ),
                      ],
                    ),
                  ),
                  Checkbox(
                    checkColor: const Color(0xff2D8D7B),
                    shape: const CircleBorder(),
                    value: false,
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: const Color(0xffE5E5E5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/ic_bca.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'BCA VIRTUAL ACCOUNT',
                          style: txtTitlePayment,
                        ),
                      ],
                    ),
                  ),
                  Checkbox(
                    checkColor: const Color(0xff2D8D7B),
                    shape: const CircleBorder(),
                    value: false,
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: const Color(0xffE5E5E5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/ic_cod.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'COD',
                          style: txtTitlePayment,
                        ),
                      ],
                    ),
                  ),
                  Checkbox(
                    activeColor: Color(0xff2D8D7B),
                    checkColor: const Color(0xffffffff),
                    shape: const CircleBorder(),
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Wrap(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xffE5E5E5))),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Payment Summary',
                          style: txtPaymentSummary,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Price:',
                              style: txtCOD,
                            ),
                            Text(
                              'Rp. 173.000',
                              style: txtCOD,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Courier:',
                              style: txtCOD,
                            ),
                            Text(
                              'Rp. 30.000',
                              style: txtCOD,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shipping insurance:',
                              style: txtCOD,
                            ),
                            Text(
                              'Rp. 500',
                              style: txtCOD,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
