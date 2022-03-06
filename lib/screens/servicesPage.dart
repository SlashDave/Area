import 'package:area/services/deezerService.dart';
import 'package:area/services/githubService.dart';
import 'package:area/services/gmailService.dart';
import 'package:area/services/redditService.dart';
import 'package:area/services/spotifyService.dart';
import 'package:area/services/twitterService.dart';
import 'package:area/services/instagramService.dart';
import 'package:area/services/weatherService.dart';
import 'package:area/services/youtubeService.dart';
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
                        children: [
                          CustomListTile(
                            icon: FontAwesomeIcons.google,
                            text: "Gmail",
                            ataviPage: GmailService(),
                          ),
                          CustomListTile(
                            icon: FontAwesomeIcons.github,
                            text: "Github",
                            ataviPage: GitHubService(),
                          ),
                          CustomListTile(
                            icon: FontAwesomeIcons.youtube,
                            text: "Youtube",
                            ataviPage: YoutubeService(),
                          ),
                          CustomListTile(
                            icon: FontAwesomeIcons.instagram,
                            text: "Instagram",
                            ataviPage: InstagramService(),
                          ),
                          CustomListTile(
                            icon: FontAwesomeIcons.twitter,
                            text: "Twitter",
                            ataviPage: TwitterService(),
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
                            ataviPage: SpotifyService(),
                          ),
                          CustomListTile(
                            icon: FontAwesomeIcons.deezer,
                            text: "Deezer",
                            ataviPage: DeezerService(),
                          ),
                          CustomListTile(
                            icon: FontAwesomeIcons.reddit,
                            text: "Reddit",
                            ataviPage: RedditService(),
                          ),
                          CustomListTile(
                            icon: FontAwesomeIcons.sun,
                            text: "Weather",
                            ataviPage: WeatherService(),
                          ),
                          // CustomListTile(
                          //   icon: FontAwesomeIcons.dropbox,
                          //   text: "Dropbox",
                          // ),
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
