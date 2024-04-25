import 'package:appmenia/utils/button.dart';
import 'package:appmenia/utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            alignment: Alignment.topCenter,
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 135),
                  Text(
                    "Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 750,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              color: Color(0xfffaf9fe),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ...ProductData.cartProductData.map((e) => Padding(
                                padding:
                                    const EdgeInsets.only(top: 18, left: 18),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 95,
                                      width: 372,
                                      decoration: BoxDecoration(
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              spreadRadius: 1,
                                              blurRadius: 5,
                                              color: Colors.grey.shade400,
                                              offset: Offset(0, 2))
                                        ],
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              child: CircleAvatar(
                                                radius: 40,
                                                foregroundImage: NetworkImage(
                                                    "${e['thumbnail']}"),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(18),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      "${e['title']}",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    Text(
                                                      "\$${e['price']}",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            e['count']--;
                                                            e['total'] =
                                                                e['price'] *
                                                                    e['count'];
                                                            if (e['count'] ==
                                                                0) {
                                                              ProductData
                                                                  .cartProductData
                                                                  .remove(e);
                                                              ProductData
                                                                  .cartData
                                                                  .remove(e);
                                                            }
                                                          });
                                                        },
                                                        child:
                                                            GlobalData.button2(
                                                                icons: Icons
                                                                    .remove),
                                                      ),
                                                    ),
                                                    Text(
                                                      "${e['count']}",
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                    Container(
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            e['count']++;
                                                            e['total'] =
                                                                e['price'] *
                                                                    e['count'];
                                                          });
                                                        },
                                                        child:
                                                            GlobalData.button2(
                                                                icons:
                                                                    Icons.add),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 5),
                                                      child: Text(
                                                        "${e['total']}",
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(19),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "\$ ${ProductData.totalPrice()}",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          // Padding(
                          //padding: const EdgeInsets.only(top: 160),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pushNamed('bill');
                              });
                            },
                            child: Container(
                              height: 70,
                              width: 360,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.green,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "CHECKOUT",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
