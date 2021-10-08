import 'package:flutter/material.dart';

import '../constants.dart';

class CustomFootBar extends StatelessWidget {
  const CustomFootBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kFootBarHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[100],
      ),
      child: const Center(
        child: Text('@ Sina Ziaee 2021-2022'),
      ),
    );
  }
}
