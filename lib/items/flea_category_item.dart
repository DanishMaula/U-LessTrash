import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/models/flea_category_model.dart';

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

    

    return Container(
        width: 165,
        height: 230,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Stack(
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
                          color: isActive == true ? Colors.red : Colors.grey,
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
                          widget.fleaCategoryModel.waktu,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      widget.fleaCategoryModel.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.fleaCategoryModel.harga,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2D8D7B),
                      ),
                    ),
                    Text(
                      widget.fleaCategoryModel.pengguna,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      widget.fleaCategoryModel.alamat,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
