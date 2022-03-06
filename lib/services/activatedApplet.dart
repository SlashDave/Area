import 'package:area/widgets/appNavbarWidget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ActivatedService extends StatefulWidget {
  const ActivatedService({Key? key}) : super(key: key);

  @override
  State<ActivatedService> createState() => _ActivatedServiceState();
}

class _ActivatedServiceState extends State<ActivatedService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppNavBarWidget(),
            Gap(MediaQuery.of(context).size.height * (0.1)),
            const Align(
              child: Text(
                "Activated Actions & Reaction",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w600
                    //fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
