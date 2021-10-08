import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:p_11_web/widgets/custom_foot_bar.dart';
import 'package:p_11_web/widgets/custom_nav_bar.dart';

import '../constants.dart';

class BaseScreen extends StatelessWidget {
  final Widget myChild;
  final Size size;
  final String title;

  const BaseScreen({
    Key? key,
    required this.myChild,
    required this.size,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomNavBar(
          size: size,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: title.length * 8,
                  height: 2,
                  color: Colors.grey.shade900,
                ),
                const SizedBox(
                  height: 35,
                ),
                myChild,
                const CustomFootBar(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
