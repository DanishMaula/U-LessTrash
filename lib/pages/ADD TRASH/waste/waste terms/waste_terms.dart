import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/items/term_condition.dart';

import '../../../../models/terms_condition_model.dart';
import '../../../../utils/text_style.dart';

class WasteTerms extends StatelessWidget {
  const WasteTerms({super.key});

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
                'Waste Terms & Conditions',
                style: titleAppbar,
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: Column(
          children: [
            Wrap(
              children: [
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffE5E5E5)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: termList.length,
                          itemBuilder: ((context, index) {
                            final TermCondition termCondition = termList[index];
                            return TermConditionItem(
                                termCondition: termCondition);
                          })),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
