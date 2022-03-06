import 'package:flutter/material.dart';
import 'package:area/widgets/appNavbarWidget.dart';
import 'package:area/widgets/trigger_action.dart';
import 'package:gap/gap.dart';

class WeatherService extends StatefulWidget {
  const WeatherService({Key? key}) : super(key: key);

  @override
  State<WeatherService> createState() => _WeatherServiceState();
}

class _WeatherServiceState extends State<WeatherService> {
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
              "Actions & Reaction of Weather Service",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    // Gap(20),
                    // TriggerActionWidget(),
                    // Gap(20),
                    // TriggerActionWidget(),
                    // Gap(20),
                    // TriggerActionWidget(),
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
