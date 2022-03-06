import 'package:area/widgets/appNavbarWidget.dart';
import 'package:area/widgets/trigger_action.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TwitterService extends StatefulWidget {
  const TwitterService({Key? key}) : super(key: key);

  @override
  State<TwitterService> createState() => _TwitterServiceState();
}

class _TwitterServiceState extends State<TwitterService> {
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
              "Actions & Reaction of Twitter Service",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
