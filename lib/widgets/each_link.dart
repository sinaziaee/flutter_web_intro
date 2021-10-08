import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EachLink extends StatelessWidget {
  final String text;
  final VoidCallback onTapped;

  const EachLink({
    Key? key,
    required this.text,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 5,
      ),
      child: Row(
        children: [
          Icon(
            Icons.done,
            color: Colors.green.shade400,
          ),
          const SizedBox(
            width: 10,
          ),
          RichText(
            text: TextSpan(
              text: text,
              recognizer: TapGestureRecognizer()..onTap = onTapped,
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
