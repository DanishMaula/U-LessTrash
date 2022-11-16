import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:u_less_trash/items/my_stock_grid.dart';
import 'package:u_less_trash/models/my_stock_models.dart';

import '../../utils/text_style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
          style: titleAppbar,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff00AB9E),
                          ),
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Raeihan Alvaro', style: txtNameProfile),
                      Text('Tangerang, Indonesia',
                          style: currentLocationClicked),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Wrap(
                children: [
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffE5E5E5)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(39, 10, 39, 10),
                        child: Column(
                          children: [
                            Text('Funds in U Less Trash',
                                style: txtNameProfile),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xffE5E5E5)),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Image.asset(
                                          'assets/images/ic_ovo.png',
                                          height: 60,
                                          fit: BoxFit.fill,
                                          width: 60,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Rp. 125.000',
                                      style: txtSaldoProfile,
                                    ),
                                    Text(
                                      'Points 332.344',
                                      style: txtSubSaldoProfile,
                                    )
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, '/selectRekening');
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xffE5E5E5)),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.asset(
                                            'assets/images/ic_cash.png',
                                            height: 60,
                                            fit: BoxFit.fill,
                                            width: 60,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Rp. 125.000',
                                        style: txtSaldoProfile,
                                      ),
                                      Text(
                                        'Saldo',
                                        style: txtSubSaldoProfile,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff2F80ED),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'My History',
                        style: txtMyHistory,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.history,
                          color: Color(0xff000000),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GridView.builder(
                padding: const EdgeInsets.only(bottom: 50),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 200,
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 50),
                itemBuilder: ((context, index) {
                  final MyStockModel myStockModel = myStockList[index];
                  return MyStockGrid(
                    myStockModel: myStockModel,
                  );
                }),
                itemCount: myStockList.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
