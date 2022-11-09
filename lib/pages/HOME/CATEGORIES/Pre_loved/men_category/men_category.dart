import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:u_less_trash/items/men_category_item.dart';
import 'package:u_less_trash/models/men_category_model.dart';

import '../../../../../items/flea_category_item.dart';
import '../../../../../models/flea_category_model.dart';
import '../../../../../utils/text_style.dart';
import '../filter/filter_page.dart';

class MenCategory extends StatefulWidget {
  const MenCategory({super.key});

  @override
  State<MenCategory> createState() => _MenCategoryState();
}

class _MenCategoryState extends State<MenCategory> {
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 100) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
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
                    icon: Image.asset(
                      'assets/images/ic_back.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
                //search bar
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xffE0E0E0)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                      height: 30,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          hintText: 'Search here...',
                          hintStyle: searchHint,
                          border: InputBorder.none,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/images/ic_chat.png',
                    width: 25,
                    height: 25,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/images/ic_cart.png',
                    width: 25,
                    height: 25,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FilterPage(
                                    text: '',
                                  )));
                    },
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xffE5E5E5)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                          child: Row(
                            children: [
                              Text('Filter', style: filterTab),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                'assets/images/ic_filter.png',
                                width: 18,
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 35,
                      margin: const EdgeInsets.all(10),
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: const Color(0xffE5E5E5)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: Text(
                              'Men\s Fashion',
                              style: filterTab,
                            )),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: const Color(0xffE5E5E5)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: Text('Sort: Latest', style: filterTab)),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: const Color(0xffE5E5E5)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: Text('Location: Tangerang',
                                    style: filterTab)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // List flea category
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (itemWidth / itemHeight),
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 20),
                itemBuilder: ((context, index) {
                  final MenCategoryModel menCategoryModel =
                      menCategoryList[index];
                  return MenCategoryItem(
                    menCategoryModel: menCategoryModel,
                  );
                }),
                itemCount: fleaCategoryList.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
