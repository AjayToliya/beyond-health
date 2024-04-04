import 'package:appmenia/utils/button.dart';
import 'package:appmenia/utils/data.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  bool isLiked = false;
  String? dropDown;
  bool istapped = false;
  dynamic salad;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          //color: Colors.grey,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                      ),
                      Text(
                        "Habiganj City",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 170),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('cart_page');
                              },
                              child: Icon(
                                Icons.shopping_cart,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('favorite_page');
                              },
                              child: Icon(
                                Icons.favorite_border,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //color: Colors.red,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Find the ",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                  text: "Best",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 30,
                                    color: Colors.black,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Food ",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                  text: "Around You",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 55,
                            width: 375,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey.shade300,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      size: 25,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Search your favourite food",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey.shade700),
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(Icons.compare_arrows)
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  //color: Colors.amber,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.topLeft,
                  //color: Colors.blueAccent,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RichText(
                            text: const TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Find  ",
                                  style: TextStyle(
                                      fontSize: 26,
                                      color: Colors.black,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: "5km ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                    color: Colors.red,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.red,
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          (istapped == true)
                              ? GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      salad = null;
                                    });
                                  },
                                  child: GlobalData.button(
                                    text: "Salads",
                                  ),
                                )
                              : Container(
                                  height: 45,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        salad = null;
                                      });
                                    },
                                    child: GlobalData.button(
                                      text: 'Salads',
                                    ),
                                  ),
                                ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                salad = "Hot sale";
                              });
                            },
                            child: GlobalData.button(
                              text: "Hot sale",
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                salad = "Popularity";
                              });
                            },
                            child: GlobalData.button(
                              text: "Popularity",
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...ProductData.allProductsData.map(
                        (e) => Container(
                          margin: EdgeInsets.only(bottom: 20),
                          height: 300,
                          width: 480,
                          child: Row(
                            children: [
                              ...e['data'].map(
                                (Map<String, dynamic> e) {
                                  return (e['category'] == salad ||
                                          salad == null)
                                      ? Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).pushNamed(
                                                  'product_detailPage',
                                                  arguments: e);
                                            },
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  right: 5, left: 5),
                                              margin: EdgeInsets.only(
                                                  right: 5, left: 5),
                                              child: Column(
                                                children: [
                                                  Expanded(
                                                    flex: 3,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  25),
                                                          topRight:
                                                              Radius.circular(
                                                                  25),
                                                        ),
                                                        color: Colors
                                                            .grey.shade300,
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 9,
                                                                    right: 9),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  // isLiked = !isLiked;
                                                                  ProductData
                                                                      .favData
                                                                      .add(e);
                                                                  ProductData
                                                                      .convertData();
                                                                });
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .favorite_border,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            alignment: Alignment
                                                                .center,
                                                            child: CircleAvatar(
                                                              radius: 65,
                                                              foregroundImage:
                                                                  NetworkImage(
                                                                "${e['thumbnail']}",
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  25),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  25),
                                                        ),
                                                        color: Colors
                                                            .grey.shade300,
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Text(
                                                                "${e['title']}",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Text(
                                                                "${e['time']}",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .grey),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .star_border,
                                                                    color: Colors
                                                                        .amber,
                                                                    size: 20,
                                                                  ),
                                                                  Text(
                                                                    "${e['rating']}",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .grey,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 28),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              25),
                                                                  child: Text(
                                                                    "${e['price']}",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ),
                                                                (e['count'] ==
                                                                        0)
                                                                    ? GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          setState(
                                                                              () {
                                                                            ProductData.cartData.add(e);
                                                                            ProductData.convertUniiqueData();
                                                                            e['count']++;
                                                                          });
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          alignment:
                                                                              Alignment.bottomRight,
                                                                          height:
                                                                              37,
                                                                          width:
                                                                              37,
                                                                          decoration: BoxDecoration(
                                                                              color: Colors.green,
                                                                              borderRadius: BorderRadius.only(
                                                                                bottomRight: Radius.circular(15),
                                                                                topLeft: Radius.circular(15),
                                                                              )),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(right: 7, bottom: 6),
                                                                            child:
                                                                                Icon(
                                                                              Icons.add,
                                                                              color: Colors.white,
                                                                              size: 22,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      )
                                                                    : Container(
                                                                        alignment:
                                                                            Alignment.bottomRight,
                                                                        height:
                                                                            37,
                                                                        width:
                                                                            37,
                                                                        decoration: BoxDecoration(
                                                                            color: Colors.green,
                                                                            borderRadius: BorderRadius.only(
                                                                              bottomRight: Radius.circular(15),
                                                                              topLeft: Radius.circular(15),
                                                                            )),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets
                                                                              .only(
                                                                              right: 7,
                                                                              bottom: 6),
                                                                          child:
                                                                              Icon(
                                                                            Icons.done,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                22,
                                                                          ),
                                                                        ),
                                                                      ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : Container();
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
