import 'package:flutter/material.dart';
import 'package:u_less_trash/pages/ADD%20TRASH/waste/waste%20price/paper_price.dart';
import 'package:u_less_trash/pages/ADD%20TRASH/waste/waste%20price/plastic_price.dart';

import '../../../../utils/text_style.dart';

class TabbarWastePrice extends StatefulWidget {
  const TabbarWastePrice({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TabbarWastePriceState createState() => _TabbarWastePriceState();
}

class _TabbarWastePriceState extends State<TabbarWastePrice>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
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
          elevation: 0,
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
                'Waste Price',
                style: titleAppbar,
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffE0E0E0), width: 1),
              ),
              child: TabBar(
                labelPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                controller: _tabController,
                // make underline indicator
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
                      'PAPER',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'METAL',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'PLASTIC',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'STEEL',
                    ),
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  PaperPrice(),
                  Center(
                    child: Text('Metal'),
                  ),
                  PlasticPrice(),
                  Center(
                    child: Text('Steel'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
