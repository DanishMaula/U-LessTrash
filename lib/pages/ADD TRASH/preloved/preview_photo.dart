import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/pages/ADD%20TRASH/preloved/choose_category.dart';


class PreviewPhoto extends StatelessWidget {
  final XFile picture;
  const PreviewPhoto({super.key, required this.picture});

  @override
  Widget build(BuildContext context) {
    void sendData() {
      // send photo to category screen
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ChooseCategory(
                  picture: picture,
                )),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff333333),
      body: Column(children: [
        Image.file(
          File(picture.path),
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width,
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff2E2E2E)),
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.close,
                      size: 40,
                      color: Color(0xffEB5757),
                    )),
              ),
            ),
            InkWell(
              onTap: () => sendData(),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff2E2E2E)),
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.check,
                      size: 40,
                      color: Color(0xff00F4A8),
                    )),
              ),
            ),
          ],
        ),
        const Spacer(),
      ]),
    );
  }
}
