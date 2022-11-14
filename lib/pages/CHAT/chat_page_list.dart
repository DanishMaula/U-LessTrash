import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/utils/text_style.dart';

class chatPageList extends StatefulWidget {
  const chatPageList({super.key});

  @override
  State<chatPageList> createState() => _chatPageListState();
}

class _chatPageListState extends State<chatPageList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Chat',
          style: titleAppbar,
        ),
      ),
    );
  }
}
