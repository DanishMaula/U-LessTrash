import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/text_style.dart';

class AddTrash extends StatelessWidget {
  const AddTrash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Add Trash',
          style: titleAppbar,
        ),
      ),
    );
  }
}
