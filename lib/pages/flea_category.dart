import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/items/flea_category_item.dart';
import 'package:u_less_trash/models/flea_category_model.dart';
import 'package:u_less_trash/pages/filter_page.dart';
import 'package:u_less_trash/utils/utils.dart';

class FleaCategory extends StatefulWidget {
  const FleaCategory({super.key});

  @override
  State<FleaCategory> createState() => _FleaCategoryState();
}

class _FleaCategoryState extends State<FleaCategory> {
  var isActive = false;
  @override
  Widget build(BuildContext context) {
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
                    icon: Image.asset('assets/images/ic_back.png'),
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
                    child: Center(
                      child: TextField(
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
                              builder: (context) => FilterPage()));
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
                              const Icon(
                                Icons.filter_list,
                                color: Color(0xff828282),
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
                              'All Products',
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

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 20),
                itemBuilder: ((context, index) {
                  final FleaCategoryModel fleaCategoryModel =
                      fleaCategoryList[index];
                  return FleaCategoryItem(
                    fleaCategoryModel: fleaCategoryModel,
                  );
                }),
                itemCount: fleaCategoryList.length,
              ),

              /// item list untuk grid view
              // Container(
              //     width: 165,
              //     height: 230,
              //     decoration: BoxDecoration(
              //       border: Border.all(color: Colors.grey),
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Expanded(
              //           flex: 2,
              //           child: Stack(
              //             children: [
              //               Container(
              //                 height: 150,
              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(10),
              //                   color: Colors.grey,
              //                   image: const DecorationImage(
              //                     image: NetworkImage(
              //                       'https://a.ipricegroup.com/media/Aldo/bomber_3.jpg',
              //                     ),
              //                     fit: BoxFit.cover,
              //                   ),
              //                 ),
              //               ),
              //               Positioned(
              //                 top: 5,
              //                 right: 5,
              //                 child: Container(
              //                   height: 25,
              //                   width: 25,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(5),
              //                   ),
              //                   child: InkWell(
              //                     onTap: () {
              //                       setState(() {
              //                         isActive = !isActive;
              //                       });
              //                     },
              //                     child: Icon(
              //                       Icons.favorite,
              //                       color: isActive == true
              //                           ? Colors.red
              //                           : Colors.grey,
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //               Positioned(
              //                 top: 120,
              //                 child: Container(
              //                   height: 30,
              //                   width: 100,
              //                   decoration: const BoxDecoration(
              //                     color: Color(0xff2D8D7B),
              //                   ),
              //                   child: const Center(
              //                     child: Text(
              //                       '4 Menit yang lalu',
              //                       style: TextStyle(
              //                           color: Colors.white, fontSize: 12),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //         Expanded(
              //           flex: 1,
              //           child: Padding(
              //             padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               // ignore: prefer_const_literals_to_create_immutables
              //               children: [
              //                 const Text(
              //                   'Jaket Keren',
              //                   style: TextStyle(
              //                     fontSize: 16,
              //                     fontWeight: FontWeight.bold,
              //                   ),
              //                 ),
              //                 const Text(
              //                   'Rp.45.000',
              //                   style: TextStyle(
              //                     fontSize: 18,
              //                     fontWeight: FontWeight.bold,
              //                     color: Color(0xff2D8D7B),
              //                   ),
              //                 ),
              //                 const Text(
              //                   'Fariz Setiawan',
              //                   style: TextStyle(
              //                     fontSize: 12,
              //                     color: Colors.black,
              //                   ),
              //                 ),
              //                 const Text(
              //                   'Tangerang, Indonesia',
              //                   style: TextStyle(
              //                     fontSize: 12,
              //                     color: Colors.grey,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ],
              //     )),
            ],
          ),
        ),
      ),
    );
  }
}
