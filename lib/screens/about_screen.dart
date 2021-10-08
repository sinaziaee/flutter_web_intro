import 'package:flutter/material.dart';
import 'package:p_11_web/constants.dart';
import 'package:p_11_web/screens/base_screen.dart';
import 'package:p_11_web/widgets/info_profile.dart';
import 'package:p_11_web/widgets/profile_card.dart';
import 'package:p_11_web/widgets/related_links.dart';
import 'package:p_11_web/widgets/text_slider.dart';

class AboutScreen extends StatelessWidget {
  static String id = '/about';

  AboutScreen({Key? key}) : super(key: key);
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: BaseScreen(
        title: 'About',
        size: MediaQuery.of(context).size,
        myChild: loadBody(),
      ),
    );
  }

  loadBody() {
    if (size.width < kMediumWidth) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileCard(
              size: size,
              isMedium: false,
            ),
            const SizedBox(
              height: 80,
            ),
            const InfoProfile(),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Related Links',
              style: TextStyle(
                fontSize: 18,
                color: kTextColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const RelatedLinks(),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: size.width,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  image: const AssetImage('images/uni.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: TextSlider(),
              ),
            ),
          ],
        ),
      );
    } //
    else if (size.width < kLargeWidth) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileCard(
                  size: size,
                  isMedium: true,
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            const SizedBox(
              width: 450,
              child: InfoProfile(),
            ),
            const SizedBox(
              height: 30,
            ),
            const RelatedLinks(),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: size.width,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  image: const AssetImage('images/uni.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: TextSlider(),
              ),
            ),
          ],
        ),
      );
    } //
    else {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileCard(
                  size: size,
                  isMedium: false,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 80,
                      ),
                      SizedBox(
                        width: 500,
                        child: InfoProfile(),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RelatedLinks(),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: size.width,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                image: const AssetImage('images/uni.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: TextSlider(),
            ),
          ),
        ],
      );
    }
  }
}
