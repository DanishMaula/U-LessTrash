import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:u_less_trash/items/pre_loved_item.dart';
import 'package:u_less_trash/models/pre_loved_model.dart';
import 'package:u_less_trash/utils/text_style.dart';

class PreLoved extends StatefulWidget {
  const PreLoved({super.key});

  @override
  State<PreLoved> createState() => _PreLovedState();
}

class _PreLovedState extends State<PreLoved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
          IconButton(
            icon: Image.asset('assets/images/ic_back.png'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
           Text('Preloved Categories', style: titleAppbar,),
        ],
        )
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemBuilder: ((context, index) {
                  final PrelovedModel prelovedModel = preLovedList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/fleaCategory');
                    },
                    child: PrelovedItem(
                      prelovedModel: prelovedModel,
                    ),
                  );
                }),
                itemCount: preLovedList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
