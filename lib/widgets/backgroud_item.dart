import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundItem extends StatelessWidget {
  final Map<String, dynamic> data;
  final bool isSmall;
  final bool hasData;

  const BackgroundItem({
    Key? key,
    required this.data,
    required this.isSmall, required this.hasData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isSmall) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: loadChildren(),
      );
    } //
    else {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: loadChildren(),
        ),
      );
    }
  }

  List<Widget> loadChildren() {
    return [
      Container(
        width: 100,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.6,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(data['price'].toString()),
        ),
      ),
      if (isSmall) ...[
        const SizedBox(
          height: 10,
        ),
      ] //
      else ...[
        const SizedBox(
          width: 10,
        ),
      ],
      if(hasData)...[
        CircleAvatar(
          radius: 61,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            backgroundImage: NetworkImage(data['image']),
            backgroundColor: Colors.white,
            radius: 60,
          ),
        ),
      ] //
      else...[
        const CircleAvatar(
          radius: 61,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 60,
          ),
        ),
      ],
      if (isSmall) ...[
        const SizedBox(
          height: 10,
        ),
      ] //
      else ...[
        const SizedBox(
          width: 10,
        ),
      ],
      SizedBox(
        width: isSmall ? 380 : 470,
        child: Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['name'],
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  data['description'],
                ),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ];
  }
}
