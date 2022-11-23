import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/models/flea_category_model.dart';
import 'package:u_less_trash/utils/text_style.dart';

class FleaCategoryItem extends StatefulWidget {
  final FleaCategoryModel fleaCategoryModel;

  const FleaCategoryItem({super.key, required this.fleaCategoryModel});

  @override
  State<FleaCategoryItem> createState() => _FleaCategoryItemState();
}

class _FleaCategoryItemState extends State<FleaCategoryItem> {
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
                            widget.fleaCategoryModel.image,
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
                            size: 15,
                            color: isActive == true
                                ? Colors.red
                                : const Color(0xffBDBDBD),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      child: Wrap(
                        children: [
                          Container(
                            height: 30,
                            decoration: const BoxDecoration(
                              color: Color(0xff2D8D7B),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  widget.fleaCategoryModel.waktu,
                                  style: titleGridWaktu,
                                ),
                              ),
                            ),
                          ),
                        ],
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
                      Text(widget.fleaCategoryModel.title, style: titleGrid),
                      Text(widget.fleaCategoryModel.harga,
                          style: titleGridHarga),
                      Text(widget.fleaCategoryModel.pengguna,
                          style: titleGridPengguna),
                      Text(widget.fleaCategoryModel.alamat,
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
