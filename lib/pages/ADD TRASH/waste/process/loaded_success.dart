import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/pages/ADD%20TRASH/waste/process/set_address.dart';
import 'package:u_less_trash/utils/colors.dart';

import '../../../../utils/text_style.dart';

class LoadedSuccess extends StatelessWidget {
  const LoadedSuccess({super.key});

  @override
  Widget build(BuildContext context) {
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
                'Add Trash',
                style: titleAppbar,
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Waste Loaded \nSuccessfully', style: txtFinishPayment),
            const SizedBox(height: 10),
            Text(
              'Waste Category',
              style: newsTitle,
            ),
            const SizedBox(height: 5),
            Container(
                padding: const EdgeInsets.only(left: 10, top: 7, bottom: 7),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE5E5E5)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Plastic',
                    style: txtBNBChat,
                  ),
                )),
            const SizedBox(height: 10),
            Text(
              'Waste Weight',
              style: newsTitle,
            ),
            const SizedBox(height: 5),
            Container(
                padding: const EdgeInsets.only(left: 10, top: 7, bottom: 7),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE5E5E5)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '100g',
                    style: txtBNBChat,
                  ),
                )),
            const SizedBox(height: 10),
            Text(
              'Waste Prices',
              style: newsTitle,
            ),
            const SizedBox(height: 5),
            Container(
                padding: const EdgeInsets.only(left: 10, top: 7, bottom: 7),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE5E5E5)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '\$1/Kg',
                    style: txtBNBChat,
                  ),
                )),
            const SizedBox(height: 10),
            Text(
              'Status',
              style: newsTitle,
            ),
            const SizedBox(height: 5),
            Container(
              padding:
                  const EdgeInsets.only(left: 10, top: 7, bottom: 7, right: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.colorPrimary),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Worth it',
                    style: txtBNBChat,
                  ),
                  const Icon(
                    Icons.check,
                    color: Color(0xff2D8D7B),
                  )
                ],
              ),
            ),
            const SizedBox(height: 70),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              height: 50,
              color: AppColor.colorPrimary,
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SetAddress(text: '');
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Process',
                    style: setLocation,
                  ),
                  const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
