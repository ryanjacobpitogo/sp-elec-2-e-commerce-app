import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pitogo_ecommerce_app/constants.dart';

import '../widgets/item_app_bar.dart';
import '../widgets/item_nav_bar.dart';

class ItemPage extends StatelessWidget {
  ItemPage({super.key});

  List<Color> Clrs = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.orange
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGray,
      body: ListView(
        children: [
          const ItemAppBar(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              "assets/images/1.png",
              height: 300,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 45,
                        bottom: 20,
                      ),
                      child: Row(
                        children: [
                          const Text(
                            "Product Title",
                            style: TextStyle(
                                fontSize: 28,
                                color: kBlue,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => const Icon(
                              Icons.favorite,
                              color: kBlue,
                            ),
                            onRatingUpdate: (index) {},
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: const Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                  color: kBlue,
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: const Text(
                                  "01",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: kBlue,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: const Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                  color: kBlue,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "This is more detailed description of the product. You can write here more about the product. This is such a lengthy description.",
                        style: TextStyle(
                          fontSize: 17,
                          color: kBlue,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          const Text(
                            "Size:",
                            style: TextStyle(
                              fontSize: 18,
                              color: kBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              for (int i = 5; i < 10; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                        )
                                      ]),
                                  child: Text(
                                    i.toString(),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: kBlue,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          const Text(
                            "Color:",
                            style: TextStyle(
                              fontSize: 18,
                              color: kBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: Clrs[i],
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      )
                                    ],
                                  ),
                                )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}
