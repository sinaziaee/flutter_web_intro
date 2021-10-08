import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:p_11_web/widgets/each_link.dart';

class RelatedLinks extends StatelessWidget {
  const RelatedLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EachLink(
          text: 'Explore Your Unconscious Mind (Tarvajeh)',
          onTapped: () {},
        ),
        EachLink(
          text: 'Cytoscape Tutorial (In Persian)',
          onTapped: () {},
        ),
        EachLink(
          text: 'Gephi Tutorial (In Persian)',
          onTapped: () {},
        ),
        EachLink(
          text: 'Presentation Tutorial (In Persian)',
          onTapped: () {},
        ),
        EachLink(
          text: 'Documentation Tutorial (In Persian)',
          onTapped: () {},
        ),
      ],
    );
  }
}
