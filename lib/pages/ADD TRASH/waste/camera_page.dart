import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/utils/text_style.dart';

class CameraPage extends StatefulWidget {
    final List<CameraDescription>? cameras;


  const CameraPage({super.key, this.cameras});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController cameraController;

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    initCameraW(widget.cameras![0]);
  }

  Future initCameraW(CameraDescription cameraDescription) async {
    cameraController =
        CameraController(cameraDescription, ResolutionPreset.medium);
    try {
      await cameraController.initialize().then((_) {
        if (!mounted) return;
        setState(() {});
      });
    } on CameraException catch (e) {
      debugPrint("camera error $e");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.center + const Alignment(0.1, 0.45),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/loadedSuccess');
          },
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
      ),
      backgroundColor: const Color(0xff333333),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                child: (cameraController.value.isInitialized)
                    ? CameraPreview(cameraController)
                    : Container(
                        color: Colors.black,
                        child:
                            const Center(child: CircularProgressIndicator())),
              ),
              Positioned(
                  top: 30,
                  left: 10,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon:
                        const Icon(Icons.close, color: Colors.white, size: 35),
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
                  onPressed: (() {
                    Navigator.pushNamed(context, '/wastePrice');
                  }),
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
    );
  }
}
