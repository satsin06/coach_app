import 'package:flutter/material.dart';

/// Option widget in the settings page.

Widget profileTileWithTrailing({
  required String title,
  required IconData icon,
  required onTap(),
  required BuildContext context,
}) {
  return Column(
    children: [
      ListTile(
        title: Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal
          ),
        ),
        trailing: Icon(
          icon,
        ),
        onTap: onTap,
      ),
      Divider(
        thickness: 2.0,
      )
    ],
  );
}

Widget profileTile({
  required String title,
  required onTap(),
  required BuildContext context,
}) {
  return Column(
    children: [
      ListTile(
        title: Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal
          ),
        ),
        onTap: onTap,
      ),
      Divider(
        thickness: 2.0,
      )
    ],
  );
}
