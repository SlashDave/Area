import 'package:area/widgets/appNavbarWidget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ServiceConnect extends StatefulWidget {
  const ServiceConnect({Key? key}) : super(key: key);

  @override
  State<ServiceConnect> createState() => _ServiceConnectState();
}

class _ServiceConnectState extends State<ServiceConnect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: PreferredSizeWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 15,
        ),
        child: Column(
          children: [
            const AppNavBarWidget(),
            Gap(MediaQuery.of(context).size.height * (0.1)),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * (0.1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * (0.5)),
                      child: const Text(
                        "Welcome to Deezer Service, Please connect to explore our Deezer Services",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Gap(50),
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ServiceConnect(),
                        ),
                      ),
                      child: const Text(
                        'Connect to the Service',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
