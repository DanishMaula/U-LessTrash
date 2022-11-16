import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../utils/text_style.dart';

class WithdrawalFinished extends StatefulWidget {
  const WithdrawalFinished({super.key});

  @override
  State<WithdrawalFinished> createState() => _WithdrawalFinishedState();
}

class _WithdrawalFinishedState extends State<WithdrawalFinished> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/earth_heart.png',
              width: 141,
              height: 121,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Money Withdrawal \nSuccessful',
              style: txtFinishPayment,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: const Color(0xff2D8D7B),
              height: 50,
              minWidth: 200,
              onPressed: (() {
                Navigator.pushNamed(context, '/navBar');
              }),
              child: Text(
                'Back to Home',
                style: btnBackToHome,
              ),
            )
          ],
        ),
      ),
    );
  }
}
