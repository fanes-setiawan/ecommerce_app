import 'package:flutter/material.dart';

import '../../../core.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.electric_moped_outlined,
      size: 65,
      color: primaryColor,
    );
  }
}
