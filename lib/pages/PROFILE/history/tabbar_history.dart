import 'package:flutter/material.dart';
import 'package:u_less_trash/pages/PROFILE/history/buyer_list.dart';
import 'package:u_less_trash/pages/PROFILE/history/seller_list.dart';

import '../../../utils/text_style.dart';

class TabbarHistory extends StatefulWidget {
  const TabbarHistory({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TabbarHistoryState createState() => _TabbarHistoryState();
}

class _TabbarHistoryState extends State<TabbarHistory>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

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
                'My History',
                style: titleAppbar,
              ),
            ],
          )),
      body: Column(
        children: [
          // give the tab bar a height [can change height to preferred height]
          Container(
            height: 45,
            decoration: const BoxDecoration(
              border: Border.fromBorderSide(
                BorderSide(color: Color(0xffE5E5E5)),
              ),
            ),
            child: TabBar(
              controller: _tabController,
              labelPadding: const EdgeInsets.symmetric(horizontal: 10.0),

              // give the indicator a decoration (color and border radius)
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(color: Color(0xff00AB9E), width: 3.0),
                insets: EdgeInsets.symmetric(horizontal: 20.0),
              ),
              labelColor: const Color(0xff2D8D7B),
              unselectedLabelColor: const Color(0xffE5E5E5),
              unselectedLabelStyle: txtLabelUnselect,
              labelStyle: txtLabelSelect,
              tabs: [
                Tab(
                  child: Text(
                    'Buyer',
                  ),
                ),
                Tab(
                  child: Text(
                    'Seller',
                  ),
                ),
              ],
            ),
          ),
          // tab bar view here
          Expanded(
            child: TabBarView(
              controller: _tabController,
              // ignore: prefer_const_literals_to_create_immutables
              children: [const BuyerList(), const SellerList()],
            ),
          ),
        ],
      ),
    );
  }
}
