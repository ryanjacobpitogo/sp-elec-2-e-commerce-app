import 'package:flutter/material.dart';
import 'package:pitogo_ecommerce_app/constants.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: kBlue,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "DP Shop",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: kBlue,
              ),
            ),
          ),
          const Spacer(),
          badges.Badge(
            badgeContent: const Text(
              "3",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: kBlue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
