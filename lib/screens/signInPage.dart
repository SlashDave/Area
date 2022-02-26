import 'package:area/screens/servicesPage.dart';
import 'package:area/widgets/loginNavbarWidget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignInPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  SignInPage({Key? key}) : super(key: key);

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
            const NavBarWidget(),
            Gap(MediaQuery.of(context).size.height * (0.1)),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * (0.3)),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Gap(50),
                    TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                      ),
                    ),
                    const Gap(20),
                    TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                      ),
                    ),
                    const Gap(50),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromWidth(
                          MediaQuery.of(context).size.width * (0.25),
                        ),
                      ),
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ServicesPage(),
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
