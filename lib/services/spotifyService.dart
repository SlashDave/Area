import 'package:flutter/material.dart';
import 'package:area/widgets/appNavbarWidget.dart';
import 'package:area/widgets/trigger_action.dart';
import 'package:gap/gap.dart';

class SpotifyService extends StatefulWidget {
  const SpotifyService({Key? key}) : super(key: key);

  @override
  State<SpotifyService> createState() => _SpotifyServiceState();
}

class _SpotifyServiceState extends State<SpotifyService> {
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
              "Actions & Reaction of Spotify Service",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    TriggerActionWidget(
                        action: "Add a Song to a Spotify Playlist",
                        reaction: "Post the Song Cover on Twitter"),
                    Gap(20),
                    TriggerActionWidget(
                        action: "Add a Song to a Spotify Playlist",
                        reaction: "Post the Song Cover on Reddit"),
                    Gap(20),
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