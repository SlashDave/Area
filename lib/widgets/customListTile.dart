import 'package:flutter/material.dart';

import '../screens/signUpPage.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {Key? key,
      required this.icon,
      required this.text,
      required this.ataviPage})
      : super(key: key);

  final IconData icon;
  final String text;
  final StatefulWidget ataviPage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(icon),
        title: Text(text),
        onTap: () => {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ataviPage,
            ),
          )
        },
        tileColor: Colors.blue,
      ),
    );
  }
}
