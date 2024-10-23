import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/home/components/contact.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: Container(
              padding: const EdgeInsets.all(defaultPadding),
              color: secondaryColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage("assets/images/profilePic2.jpg"),
                  ),
                  Text("Siddhant Vedpathak",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: Colors.white,
                          )),
                  Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: Text(
                        "As a motivated and energetic Flutter developer, I've built and launched multiple cross-platform apps for both Android and iOS, including standout projects like Gluco QR and Fanbuku. With a strong foundation in Flutter, Firebase, and state management. From projects featuring in the G20 MedTech Expo to integrating payment gateways,  ",
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                  ContactMe(),
                ],
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: Container(
              padding: const EdgeInsets.all(defaultPadding),
              color: secondaryColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: defaultPadding * 2.5),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage("assets/images/profilePic2.jpg"),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Siddhant Vedpathak",
                            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: Colors.white,
                                )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                          child: Text(
                              "As a motivated and energetic Flutter developer, I've built and launched multiple cross-platform apps for both Android and iOS, including standout projects like Gluco QR and Fanbuku. With a strong foundation in Flutter, Firebase, and state management. From projects featuring in the G20 MedTech Expo to integrating payment gateways,  ",
                              softWrap: true,
                              style: Theme.of(context).textTheme.bodyMedium),
                        ),
                        ContactMe(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
