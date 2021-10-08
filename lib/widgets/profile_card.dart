import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../constants.dart';

class ProfileCard extends StatelessWidget {
  final Size size;
  final bool isMedium;

  const ProfileCard({
    Key? key,
    required this.size, required this.isMedium,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isMedium ? 500 : 350,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    SizedBox(
                      height: isMedium ? 30 : 25,
                    ),
                    Text(
                      'SINA ZIAEE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: isMedium ? 30 : 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: isMedium ? 30 : 25,
                    ),
                    Text(
                      'FullStack Developer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: isMedium ? 25 : 20,
                      ),
                    ),
                    SizedBox(
                      height: isMedium ? 60 : 55,
                    ),
                    CircleAvatar(
                      backgroundImage: const AssetImage(
                        'images/sina.jpeg',
                      ),
                      backgroundColor: Colors.white,
                      radius: isMedium ? 110 : 80,
                    ),
                    SizedBox(
                      height: isMedium ? 55 : 50,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 0.3,
                thickness: 0.3,
                color: Colors.grey,
              ),
              SizedBox(
                height: isMedium ? 25 : 20,
              ),
              Row(
                children: [
                  Text(
                    'Email:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: isMedium ? 17 : 15,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'sinaziaee99@gmail.com',
                    style: TextStyle(
                      fontSize: isMedium ? 17 : 15,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(
                height: isMedium ? 20 : 15,
              ),
              Row(
                children: [
                  Text(
                    'Github:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: isMedium ? 17 : 15,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'https://github.com/sinaziaee',
                      style: TextStyle(
                        fontSize: isMedium ? 17 : 15,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(
                height: isMedium ? 25 : 20,
              ),
              const Divider(
                height: 0.3,
                thickness: 0.3,
                color: Colors.grey,
              ),
              SizedBox(
                height: isMedium ? 25 : 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: isMedium ? 25 : 20,
                    backgroundColor: Colors.blueGrey,
                    child: const Text(
                      'in',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: isMedium ? 25 : 20,
                    backgroundColor: Colors.grey.shade700,
                    child: const Icon(
                      Icons.document_scanner,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: isMedium ? 35 : 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
