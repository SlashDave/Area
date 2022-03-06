import 'package:area/screens/homePage.dart';
import 'package:area/screens/servicesPage.dart';
import 'package:area/screens/userProfilePage.dart';
import 'package:area/services/activatedApplet.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppNavBarWidget extends StatelessWidget {
  const AppNavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ServicesPage(),
            ),
          ),
          child: const Text(
            'WAREA',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        TextButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ActivatedService(),
            ),
          ),
          child: const Text(
            'Applets',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Gap(20),
        TextButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ServicesPage(),
            ),
          ),
          child: const Text(
            'Services',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Gap(20),
        TextButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const UserProfilePage(),
            ),
          ),
          child: const Text(
            'Profile',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Gap(20),
        ElevatedButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          ),
          child: const Text(
            'Logout',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
