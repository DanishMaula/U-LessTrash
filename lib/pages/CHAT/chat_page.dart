import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/models/men_category_model.dart';

import '../../utils/text_style.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.3,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Image.asset('assets/images/ic_back.png'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 20),
                  const CircleAvatar(
                    radius: 23,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGV8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Fariz Setiawan', style: titleCart),
                      Text('Tangerang', style: alamatCart),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 20),
              IconButton(
                  color: const Color(0xff333333),
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert))
            ],
          )),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        item(),
        Expanded(child: listChat(context)),
        // const SizedBox(height: 10),
      ]),

      // Bottom Navigation Bar
      bottomNavigationBar: Wrap(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xffffffff)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 5),
                  child: Text(
                    'Select Massage',
                    style: txtBNBChat,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 31,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color(0xffE5E5E5)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                              child: Text(
                            'I am interested in',
                            style: filterTab,
                          )),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color(0xffE5E5E5)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                              child: Text('Hello! is the item still there?',
                                  style: filterTab)),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color(0xffE5E5E5)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                              child: Text('Hello !, I want to buy this one',
                                  style: filterTab)),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Color(0xffE5E5E5),
                  thickness: 1,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: Color(0xffE0E0E0),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Halo, Good Morning',
                              hintStyle: tfChat,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xff2D8D7B),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Wrap item() {
    return Wrap(
      children: [
        Container(
          margin: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xffE5E5E5)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGV8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Hoodie Putih & Ijo',
                    style: titleCartItem,
                  ),
                  Text(
                    'Rp. 100.000',
                    style: hargaCartItem,
                  ),
                  Text(
                    'Fariz Setiawan',
                    style: penggunaCartItem,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Padding listChat(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
      ),
      child: Container(
        height: double.infinity,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            _itemChat0(
              message: 'Halo, Apakah barang nya masih ada?',
              chat: 0,
              time: '12.00',
            ),
            const SizedBox(height: 20),
            _itemChat1(
              message: 'Hai, Masih ada kak',
              chat: 1,
              time: '12.05',
            ),
            _itemChat1(
              message: 'Mau Pesan kah kak?',
              chat: 1,
              time: '12.05',
            ),
            const SizedBox(height: 20),
            _itemChat0(
              message: 'Mau nanya-nanya dulu boleh kak?',
              chat: 0,
              time: '12.07',
            ),
            const SizedBox(height: 20),
            _itemChat1(
              message: 'Boleh banget dong kak, asal nanti \nbeli ya wkwkwk',
              chat: 1,
              time: '12.05',
            ),
            const SizedBox(height: 20),
            _itemChat0(
              message: 'Siap Kak hehehe',
              chat: 0,
              time: '12.07',
            ),
            _itemChat0(
              message: 'Pertanyaannya, bebek apa yang \nkakinya dua?',
              chat: 0,
              time: '12.07',
            ),
          ],
        ),
      ),
    );
  }
}

// item for chat
Widget _itemChat0({
  required String message,
  required int chat,
  required String time,
}) {
  return Row(
    mainAxisAlignment:
        chat == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text(
        time,
        style: txtChatTime,
      ),
      Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            border:
                chat == 0 ? null : Border.all(color: const Color(0xffE5E5E5)),
            color: chat == 0 ? const Color(0xff2D8D7B) : Colors.white,
            borderRadius: chat == 0
                ? const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))
                : const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
        child: Text(
          message,
          style: txtChat0,
        ),
      ),
      const SizedBox(
        width: 5,
      ),
      const CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGV8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
      ),
    ],
  );
}

Widget _itemChat1({
  required String message,
  required int chat,
  required String time,
}) {
  return Row(
    mainAxisAlignment:
        chat == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      const CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60'),
      ),
      const SizedBox(width: 5),
      Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            border:
                chat == 0 ? null : Border.all(color: const Color(0xffE5E5E5)),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            )),
        child: Text(
          message,
          style: txtChat1,
        ),
      ),
      const SizedBox(
        width: 5,
      ),
      Text(
        time,
        style: txtChatTime,
      )
    ],
  );
}
