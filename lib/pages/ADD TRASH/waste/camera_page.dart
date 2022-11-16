import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  //  late CameraController camController;

  // Future<void> initializeCamera() async {
  //   var cameras = await availableCameras();
  //   camController = CameraController(cameras[0], ResolutionPreset.medium);
  //   await camController.initialize();
  // }

  // @override
  // void dispose() {
  //   camController.dispose();
  //   super.dispose();
  // }

  // Future<File> takePicture() async {
  //   Directory root = await getTemporaryDirectory();
  //   String directoryPath = '${root.path}/Guided_Camera';
  //   await Directory(directoryPath).create(recursive: true);
  //   String filePath = '$directoryPath/${DateTime.now()}.jng';

  //   try {
  //     camController.takePicture();
  //   } catch (e) {
  //     print(e);
  //   }

  //   return File(filePath);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //     body: FutureBuilder(
    //   future: initializeCamera(),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.done) {
    //       return Container(
    //         child: CameraPreview(camController),
    //       );
    //     } else {
    //       return const Center(child: CircularProgressIndicator());
    //     }
    //   },
    // )
    );
  }
}
