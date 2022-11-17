import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/utils/text_style.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late List<CameraDescription> cameras;
  late CameraController cameraController;

  @override
  void initState() {
    super.initState();
    startCamera();
  }

  void startCamera() async {
    cameras = await availableCameras();

    cameraController = CameraController(
      cameras[0],
      ResolutionPreset.medium,
      enableAudio: false,
    );

    await cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      // to refresh widget
      setState(() {});
    }).catchError((e) {});
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (cameraController.value.isInitialized) {
      return Scaffold(
        floatingActionButton: Align(
          alignment: Alignment.center + const Alignment(0.1, 0.45),
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: const Color(0xff2D8D7B),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(
                  Icons.camera,
                  color: Colors.white,
                ),
                Text(
                  'Take',
                  style: btnTakePhoto,
                ),
              ],
            ),
          ),
        ),
        backgroundColor: const Color(0xff333333),
        body: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width,
                    child: CameraPreview(cameraController)),
                Positioned(
                    top: 30,
                    left: 10,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close,
                          color: Colors.white, size: 35),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 80, 20, 10),
              child: Column(
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: const Color(0xff2D8D7B),
                    height: 40,
                    minWidth: double.infinity,
                    onPressed: (() {
                      Navigator.pushNamed(context, '/wasteTerm');
                    }),
                    child: Text(
                      'Waste Terms & Conditions',
                      style: btnWasteTerm,
                    ),
                  ),
                  const SizedBox(height: 10),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: const Color(0xff2D8D7B),
                    height: 40,
                    minWidth: double.infinity,
                    onPressed: (() {}),
                    child: Text(
                      'Waste Prices',
                      style: btnWasteTerm,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

        // bottomNavigationBar: Wrap(
        //   children: [
        //     Container(
        //       color: Colors.blue,
        //       width: double.infinity,
        //       child: Padding(
        //         padding: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
        //         child: Column(
        //           children: [
        //             const SizedBox(height: 10),
        //             MaterialButton(
        //               shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(5)),
        //               color: const Color(0xff2D8D7B),
        //               height: 40,
        //               minWidth: double.infinity,
        //               onPressed: (() {}),
        //               child: const Text('Waste Terms & Conditions'),
        //             ),
        //             const SizedBox(height: 10),
        //             MaterialButton(
        //               shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(5)),
        //               color: const Color(0xff2D8D7B),
        //               height: 40,
        //               minWidth: double.infinity,
        //               onPressed: (() {}),
        //               child: const Text('Waste Prices'),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      );
    } else {
      return const Scaffold(
        body: SizedBox(
          height: 30,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }
  }
}
