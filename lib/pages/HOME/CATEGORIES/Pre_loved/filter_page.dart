import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/pages/HOME/CATEGORIES/Pre_loved/location.dart';
import 'package:u_less_trash/utils/text_style.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  var isClicked = false;
  var isClicked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filter',
          style: titleAppbar,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                isClicked = false;
                isClicked2 = false;
              });
            },
            child: Text(
              'Reset',
              style: titleReset,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          icon: Image.asset(
            'assets/images/ic_back.png',
            height: 27,
            width: 27,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sort By:', style: titleSPS),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 31,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xffE5E5E5)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'All Products',
                        style: filterTab,
                      ),
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 31,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xffE5E5E5)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Popular',
                        style: filterTab,
                      ),
                    )),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isClicked = !isClicked;
                      });
                    },
                    child: Container(
                      height: 31,
                      decoration: BoxDecoration(
                        color:
                            isClicked ? const Color(0xff2D8D7B) : Colors.white,
                        border: Border.all(color: const Color(0xffE5E5E5)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Latest',
                          style: isClicked ? filterTabWhite : filterTab,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 31,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xffE5E5E5)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Price - High to Low',
                        style: filterTab,
                      ),
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 31,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xffE5E5E5)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Price - Low to High',
                        style: filterTab,
                      ),
                    )),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Price',
                style: titleSPS,
              ),
              const SizedBox(height: 10),
              Text(
                'Minimum (Optional)',
                style: minMaxPrice,
              ),
              const SizedBox(height: 5),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE5E5E5)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Set Price',
                        hintStyle: hintStyle,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Maximum (Optional)',
                style: minMaxPrice,
              ),
              const SizedBox(height: 5),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE5E5E5)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Set Price',
                        hintStyle: hintStyle,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Sections',
                style: titleSPS,
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isClicked2 = !isClicked2;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: 31,
                          decoration: BoxDecoration(
                            color: isClicked2
                                ? const Color(0xff2D8D7B)
                                : Colors.white,
                            border: Border.all(color: const Color(0xffE5E5E5)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Men\'s Fashion',
                              style: isClicked2 ? filterTabWhite : filterTab,
                            ),
                          )),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 31,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: const Color(0xffE5E5E5)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Women\'s Fashion',
                            style: filterTab,
                          ),
                        )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 31,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: const Color(0xffE5E5E5)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Upper Body',
                            style: filterTab,
                          ),
                        )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 31,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: const Color(0xffE5E5E5)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Head',
                            style: filterTab,
                          ),
                        )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 31,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: const Color(0xffE5E5E5)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Legs',
                            style: filterTab,
                          ),
                        )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 31,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: const Color(0xffE5E5E5)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Feets',
                            style: filterTab,
                          ),
                        )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 31,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: const Color(0xffE5E5E5)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Accessories',
                            style: filterTab,
                          ),
                        )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Locations',
                    style: titleSPS,
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      if (isClicked && isClicked2 == true) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return  MapSample();
                        }));
                      }
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffE5E5E5)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Select Location',
                                style: hintStyle,
                              ),
                              Image.asset(
                                'assets/images/ic_location.png',
                                width: 16,
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}