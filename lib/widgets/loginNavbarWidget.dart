import 'package:area/screens/homePage.dart';
import 'package:area/screens/signInPage.dart';
import 'package:area/screens/signUpPage.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
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
              builder: (context) => SignInPage(),
            ),
          ),
          child: const Text(
            'Sign In',
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
              builder: (context) => SignUpPage(),
            ),
          ),
          child: const Text(
            'Sign Up',
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
