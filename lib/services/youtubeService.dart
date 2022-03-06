import 'package:flutter/material.dart';
import 'package:area/widgets/appNavbarWidget.dart';
import 'package:area/widgets/trigger_action.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class YoutubeService extends StatefulWidget {
  const YoutubeService({Key? key}) : super(key: key);

  @override
  State<YoutubeService> createState() => _YoutubeServiceState();
}

class _YoutubeServiceState extends State<YoutubeService> {
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
              "Actions & Reaction of Youtube Service",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    Gap(20),
                    TriggerActionWidget(
                        icon: FontAwesomeIcons.youtube,
                        action: "Like a Youtube Video",
                        icon2: FontAwesomeIcons.twitter,
                        reaction: "Post on Twitter the video link URL"),
                    Gap(20),
                    TriggerActionWidget(
                        icon: FontAwesomeIcons.youtube,
                        action: "Like a Youtube Video",
                        icon2: FontAwesomeIcons.reddit,
                        reaction: "Post on Reddit the video link URL"),
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
