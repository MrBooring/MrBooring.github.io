import 'dart:developer';
import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Maharashtra",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Pune",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "21",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () async {
                        downloadResume();
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context).textTheme.bodyLarge!.color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void downloadResume() {
    if (kIsWeb) {
      html.AnchorElement anchorElement = new html.AnchorElement(href: "lib/assets/Siddhant_2P.pdf");
      anchorElement.download = "Siddhant_Vedpathak.pdf";
      anchorElement.click();
    }
  }
}