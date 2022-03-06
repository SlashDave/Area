import 'package:flutter/material.dart';
import 'package:area/widgets/appNavbarWidget.dart';
import 'package:area/widgets/trigger_action.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class DeezerService extends StatefulWidget {
  const DeezerService({Key? key}) : super(key: key);

  @override
  State<DeezerService> createState() => _DeezerServiceState();
}

class _DeezerServiceState extends State<DeezerService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 15,
        ),
        child: Column(
          children: const [
            AppNavBarWidget(),
            Gap(50),
            Text(
              "Actions & Reaction of Deezer Service",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gap(20),
            TriggerActionWidget(
                icon: FontAwesomeIcons.deezer,
                action: "Add a Song to a Deezer Playlist",
                reaction: "Post the Song Cover on Twitter"),
            Gap(20),
            TriggerActionWidget(
                icon: FontAwesomeIcons.deezer,
                action: "Add a Song to a Deezer Playlist",
                reaction: "Post the Song Cover on Reddit"),
            Gap(20),
          ],
        ),
      ),
    );
  }
}
