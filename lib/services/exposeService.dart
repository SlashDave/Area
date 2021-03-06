// ignore: file_names
import 'package:area/widgets/appNavbarWidget.dart';
import 'package:area/widgets/trigger_action.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

class ExposeServices extends StatefulWidget {
  const ExposeServices({Key? key}) : super(key: key);

  @override
  State<ExposeServices> createState() => _ExposeServicesState();
}

class _ExposeServicesState extends State<ExposeServices> {
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
          ],
        ),
      ),
    );
  }
}
