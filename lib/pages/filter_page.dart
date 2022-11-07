import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/utils/utils.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Reset',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
        flexibleSpace: SafeArea(
          ///Button Back & Search
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset('assets/images/ic_back.png'),
                  ),
                ),
                //search bar
                Expanded(
                    flex: 5,
                    child: Text(
                      'Filter',
                      style: titleAppbar,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
