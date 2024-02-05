import 'package:flutter/material.dart';

class MyRactButton extends StatelessWidget {
  final VoidCallback onPress;
  final String btnName;
  final IconData icon;

  const MyRactButton(
      {super.key,
      required this.onPress,
      required this.btnName,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            const SizedBox(width: 10),
            Text(
              btnName,
              style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.primaryContainer,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
