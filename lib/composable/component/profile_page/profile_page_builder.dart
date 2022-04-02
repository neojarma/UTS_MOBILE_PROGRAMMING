import 'package:flutter/material.dart';
import '../../../utilities/constants.dart';
import '../library_page/contact_builder.dart';

class ProfilePageBuilder extends StatelessWidget {
  const ProfilePageBuilder({
    Key? key,
  }) : super(key: key);

  final imagePath = 'assets/images/profile.jpg';
  final name = 'Neo Jarmawijaya';
  final npm = '2042006';
  final address = 'Jl Binong Jati no 112, \n Jawa Barat, \n Indonesia.';
  final about =
      'Currently studying computer science in STMIK AMIK Bandung. Have a set of particular skills in hardware, software and networking and have great passion in programming especially in mobile programming.';
  final phoneNumber = '+62 828-6394-061';
  final email = 'neojarmawijaya@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          // the background image will stretch until equal to the parent width
          // so we have to wrap circle avatar widget into fitted box
          // and set fit property with boxfit.scaledown
          FittedBox(
            fit: BoxFit.scaleDown,
            child: CircleAvatar(
              radius: 90,
              backgroundImage: Image.asset(imagePath).image,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              name,
              style: kHeadline5FontStyle.copyWith(color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              npm,
              style: kProfileNameTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            address,
            textAlign: TextAlign.center,
            style: kProfileAddressTextStyle,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 50, 0, 15),
            child: const Text(
              'About',
              style: kHeadline6FontStyle,
            ),
          ),
          Text(
            about,
            style: kBody2FontStyle.copyWith(fontSize: 15),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 50, 0, 15),
            child: const Text(
              'Contact',
              style: kHeadline6FontStyle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ContactBuilder(
                icon: Icons.phone,
                text: phoneNumber,
              ),
              ContactBuilder(
                icon: Icons.email,
                text: email,
              ),
            ],
          )
        ],
      ),
    );
  }
}
