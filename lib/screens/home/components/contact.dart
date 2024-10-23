import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      color: Color.fromARGB(255, 54, 54, 66),
      child: Row(
        children: [
          Spacer(),
          IconButton(
            onPressed: () async {
              try {
                final Uri _url = Uri.parse('https://www.linkedin.com/in/siddhant-vedpathak');
                if (!await launchUrl(_url)) {
                  throw Exception('Could not launch $_url');
                }
              } catch (e) {
                log("Exception => ${e}");
              }
            },
            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
          ),
          IconButton(
            onPressed: () async {
              try {
                final Uri _url = Uri.parse('https://github.com/MrBooring');
                if (!await launchUrl(_url)) {
                  throw Exception('Could not launch $_url');
                }
              } catch (e) {
                log("Exception => ${e}");
              }
            },
            icon: SvgPicture.asset("assets/icons/github.svg"),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: SvgPicture.asset("assets/icons/twitter.svg"),
          // ),
          Spacer(),
        ],
      ),
    );
  }
}
