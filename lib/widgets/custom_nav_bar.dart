import 'package:flutter/material.dart';
import 'package:p_11_web/constants.dart';
import 'package:p_11_web/widgets/custom_tab_bar.dart';

class CustomNavBar extends StatelessWidget {
  final Size size;

  const CustomNavBar({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kNavBarHeight,
      width: size.width,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: loadNavBar(),
    );
  }

  loadNavBar() {
    print(size.width);
    if (size.width < kMediumWidth) {
      return Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Image.asset('images/iust.png'),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      );
    } //
    else if (size.width < kLargeWidth) {
      return Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Image.asset('images/iust.png'),
          const Spacer(),
          const CustomTabBar(
            isLarge: false,
          ),
          const Spacer(),
          const SizedBox(
            width: 20,
          ),
        ],
      );
    } //
    else {
      return Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          const Spacer(
            flex: 1,
          ),
          Image.asset('images/iust.png'),
          const Spacer(
            flex: 2,
          ),
          const CustomTabBar(
            isLarge: true,
          ),
          const Spacer(
            flex: 2,
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      );
    }
  }
}
