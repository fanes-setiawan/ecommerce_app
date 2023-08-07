import 'package:flutter/material.dart';

import '../../theme/theme_config.dart';

class AppLogoSmall extends StatelessWidget {
  const AppLogoSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.electric_moped_outlined,
      size: 40,
      color: primaryColor,
    );
  }
}
