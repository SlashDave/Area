import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TriggerActionWidget extends StatelessWidget {
  final String action;
  final String reaction;
  final IconData icon;
  final IconData icon2;
  const TriggerActionWidget({
    Key? key,
    required this.action,
    required this.reaction,
    required this.icon2,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * (0.2),
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width * (0.15),
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                //border: Border.all(color: Colors.grey),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                  )
                ],
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    child: Icon(icon),
                  ),
                  const Gap(10),
                  Text(
                    action,
                  ),
                  const Gap(10),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text("Connecter"),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.double_arrow,
              size: 40,
            ),
            Container(
              constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width * (0.15),
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                //border: Border.all(color: Colors.grey),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                  )
                ],
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    child: Icon(icon2),
                    //child: Image du service,
                  ),
                  const Gap(10),
                  Text(
                    reaction,
                  ),
                  const Gap(10),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text("Connecter"),
                  ),
                ],
              ),
            ),
            ElevatedButton.icon(
              icon: const Icon(
                // Icons.close,
                Icons.done,
              ),
              onPressed: () {},
              label: const Text("Activer"),
            ),
          ],
        ),
      ),
    );
  }
}
