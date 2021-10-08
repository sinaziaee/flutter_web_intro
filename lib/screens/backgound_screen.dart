import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:p_11_web/widgets/backgroud_item.dart';

import '../constants.dart';
import 'base_screen.dart';

class BackgroundScreen extends StatelessWidget {
  static String id = '/background';

  BackgroundScreen({Key? key}) : super(key: key);

  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: BaseScreen(
        title: 'Background',
        size: MediaQuery.of(context).size,
        myChild: StreamBuilder(
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              return ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: snapshot.data!.docs
                    .map(
                      (QueryDocumentSnapshot doc) => BackgroundItem(
                        data: (doc.data() as Map<String, dynamic>),
                        isSmall: checkSize(),
                        hasData: true,
                      ),
                    )
                    .toList(),
              );
            } //
            else {
              List<Map<String, dynamic>> docs = [
                {
                  'name': '',
                  'description': '',
                  'image': '',
                  'price': 0,
                },
                {
                  'name': '',
                  'description': '',
                  'image': '',
                  'price': 0,
                },
                {
                  'name': '',
                  'description': '',
                  'image': '',
                  'price': 0,
                },
              ];
              return ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: docs
                    .map(
                      (Map<String, dynamic> doc) => BackgroundItem(
                        data: (doc),
                        hasData: false,
                        isSmall: checkSize(),
                      ),
                    )
                    .toList(),
              );
            }
          },
          stream: fireStore.collection('Items').snapshots(),
        ),
      ),
    );
  }

  bool checkSize() {
    if (size.width < kMediumWidth) {
      return true;
    } //
    return false;
  }
}
