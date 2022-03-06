import 'package:flutter/material.dart';
import 'package:area/widgets/appNavbarWidget.dart';
import 'package:area/widgets/trigger_action.dart';
import 'package:gap/gap.dart';

class RedditService extends StatefulWidget {
  const RedditService({Key? key}) : super(key: key);

  @override
  State<RedditService> createState() => _RedditServiceState();
}

class _RedditServiceState extends State<RedditService> {
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
              "Actions & Reaction of Reddit Service",
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
                        action: "Make a Post on Reddit",
                        reaction: "Have the same Post on Twitter"),
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
