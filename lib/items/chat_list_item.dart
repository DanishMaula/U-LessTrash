import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/models/seller_model.dart';

class ChatListItem extends StatelessWidget {
  final SellerModel sellerModel;
  const ChatListItem({super.key, required this.sellerModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffE5E5E5)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(sellerModel.image),
              ),
              const SizedBox(width: 10),
              Text(sellerModel.nama),
            ],
          ),
        ),
      ),
    );
  }
}
