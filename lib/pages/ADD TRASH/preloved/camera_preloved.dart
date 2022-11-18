import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:u_less_trash/pages/ADD%20TRASH/preloved/photo_confirm.dart';

import '../../../utils/text_style.dart';

class CameraPreloved extends StatefulWidget {
  const CameraPreloved({Key? key, required this.cameras}) : super(key: key);

  final List<CameraDescription>? cameras;

  @override
  State<CameraPreloved> createState() => _CameraPrelovedState();
}

class _CameraPrelovedState extends State<CameraPreloved> {
  late CameraController _cameraController;

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    initCamera(widget.cameras![0]);
  }

  Future takePicture() async {
    if (!_cameraController.value.isInitialized) {
      return null;
    }
    if (_cameraController.value.isTakingPicture) {
      return null;
    }
    try {
      await _cameraController.setFlashMode(FlashMode.off);
      XFile picture = await _cameraController.takePicture();
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => PhotoConfirm(
      //               picture: picture,
      //             )));
    } on CameraException catch (e) {
      debugPrint('Error occured while taking picture: $e');
      return null;
    }
  }

  Future initCamera(CameraDescription cameraDescription) async {
    _cameraController =
        CameraController(cameraDescription, ResolutionPreset.medium);
    try {
      await _cameraController.initialize().then((_) {
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
        backgroundColor: const Color(0xff333333),
        body: Column(
          children: [
            Stack(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                child: (_cameraController.value.isInitialized)
                    ? CameraPreview(_cameraController)
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
            ]),
            const Spacer(),
            Center(
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
            Spacer(),
          ],
        ));
  }
}
