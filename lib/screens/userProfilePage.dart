import 'package:area/widgets/appNavbarWidget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
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
                "Account Informations",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(),
            const Text(
              "Profile",
            ),
            const CircleAvatar(),
            const Divider(),
            const Text(
              "Username",
            ),
            const DecoratedBox(
              decoration: BoxDecoration(),
              child: Text("Basilia"),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
