import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/men_category_model.dart';
import '../utils/text_style.dart';

class MenCategoryItem extends StatefulWidget {
  final MenCategoryModel menCategoryModel;
  const MenCategoryItem({super.key, required this.menCategoryModel});

  @override
  State<MenCategoryItem> createState() => _MenCategoryItemState();
}

class _MenCategoryItemState extends State<MenCategoryItem> {
  var isActive = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
            width: 165,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffE5E5E5)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                        image: DecorationImage(
                          image: NetworkImage(
                            widget.menCategoryModel.image,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isActive = !isActive;
                            });
                          },
                          child: Icon(
                            Icons.favorite,
                            color: isActive == true
                                ? Colors.red
                                : const Color(0xffBDBDBD),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      child: Container(
                        height: 30,
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Color(0xff2D8D7B),
                        ),
                        child: Center(
                          child: Text(
                            widget.menCategoryModel.waktu,
                            style: titleGridWaktu,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(height: 5),
                      Text(widget.menCategoryModel.title, style: titleGrid),
                      Text(widget.menCategoryModel.harga,
                          style: titleGridHarga),
                      Text(widget.menCategoryModel.pengguna,
                          style: titleGridPengguna),
                      Text(widget.menCategoryModel.alamat,
                          style: titleGridAlamat),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
