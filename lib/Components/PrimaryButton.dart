import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final IconData icon;
  final String btnName;
  const PrimaryButton({super.key, required this.icon, required this.btnName});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Theme.of(context).colorScheme.background,
            ),
            SizedBox(width: 10),
            Text(
              btnName,
              style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.background,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
