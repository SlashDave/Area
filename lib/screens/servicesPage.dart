import 'package:area/widgets/appNavbarWidget.dart';
import 'package:area/widgets/customListTile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 15,
        ),
        child: Column(
          children: [
            const AppNavBarWidget(),
            const Gap(50),
            const Text(
              "Available Services",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gap(MediaQuery.of(context).size.height * (0.1)),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * (0.4),
                      child: Column(
                        children: const [
                          CustomListTile(
                            icon: FontAwesomeIcons.google,
                            text: "Google",
                          ),
                          CustomListTile(
                            icon: FontAwesomeIcons.github,
                            text: "Github",
                          ),
                          CustomListTile(
                            icon: FontAwesomeIcons.facebook,
                            text: "Facebook",
                          ),
                          CustomListTile(
                            icon: FontAwesomeIcons.instagram,
                            text: "Instagram",
                          ),
                          CustomListTile(
                            icon: FontAwesomeIcons.twitter,
                            text: "Twitter",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * (0.4),
                      child: Column(
                        children: const [
                          CustomListTile(
                            icon: FontAwesomeIcons.spotify,
                            text: "Spotify",
                          ),
                          CustomListTile(
                            icon: FontAwesomeIcons.deezer,
                            text: "Deezer",
                          ),
                          CustomListTile(
                            icon: FontAwesomeIcons.reddit,
                            text: "Reddit",
                          ),
                          CustomListTile(
                            icon: FontAwesomeIcons.rss,
                            text: "RSS",
                          ),
                          CustomListTile(
                            icon: FontAwesomeIcons.dropbox,
                            text: "Dropbox",
                          ),
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
}
