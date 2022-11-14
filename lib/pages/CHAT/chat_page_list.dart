import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/items/chat_list_item.dart';
import 'package:u_less_trash/models/seller_model.dart';
import 'package:u_less_trash/utils/text_style.dart';

class ChatPageList extends StatelessWidget {
  const ChatPageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Text(
          'Chat',
          style: titleAppbar,
        ),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: sellerModelList.length,
          itemBuilder: ((context, index) {
            final SellerModel sellerModel = sellerModelList[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/chat');
              },
              child: ChatListItem(
                sellerModel: sellerModel,
              ),
            );
          })),
    );
  }
}
