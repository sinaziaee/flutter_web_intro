import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class InfoProfile extends StatelessWidget {
  const InfoProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: kTextColor, fontSize: 16),
        children: [
          const TextSpan(
            text: 'Dr. Hossein Rahmani is an assistant professor at ',
          ),
          TextSpan(
            text: 'Computer Engineering Department',
            recognizer: TapGestureRecognizer()..onTap = () {},
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
          const TextSpan(
            text: ', ',
          ),
          TextSpan(
            text: ' Iran University of Science and Technology',
            recognizer: TapGestureRecognizer()..onTap = () {},
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
          const TextSpan(
            text:
                ', Tehran, Iran. At the same time, He is also Research Fellow at ',
          ),
          TextSpan(
            text: 'Department of Knowledge Engineering',
            recognizer: TapGestureRecognizer()..onTap = () {},
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
          const TextSpan(
            text: ', ',
          ),
          TextSpan(
            text: 'Maastricht University',
            recognizer: TapGestureRecognizer()..onTap = () {},
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
          const TextSpan(
            text: ', Maastricht, The Netherlands. ',
          ),
        ],
      ),
    );
  }
}
