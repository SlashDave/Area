import 'package:flutter/material.dart';
import 'package:area/widgets/appNavbarWidget.dart';
import 'package:area/widgets/trigger_action.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class GitHubService extends StatefulWidget {
  GitHubService({Key? key}) : super(key: key);

  @override
  State<GitHubService> createState() => _GitHubServiceState();
}

class _GitHubServiceState extends State<GitHubService> {
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
              "Actions & Reaction of Github Service",
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
                        icon: FontAwesomeIcons.github,
                        action: "Create a Public Repository",
                        icon2: FontAwesomeIcons.twitter,
                        reaction:
                            "Post on Twitter a link to make a Pull request"),
                    Gap(20),
                    TriggerActionWidget(
                        icon: FontAwesomeIcons.github,
                        action: "Create a Public Repository",
                        icon2: FontAwesomeIcons.reddit,
                        reaction:
                            "Post on Reddit a link to make a Pull request"),
                    Gap(20),
                    TriggerActionWidget(
                        icon: FontAwesomeIcons.github,
                        action: "Pull request on Github Repository",
                        icon2: FontAwesomeIcons.twitter,
                        reaction: "Receive a Twitter notification"),
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
