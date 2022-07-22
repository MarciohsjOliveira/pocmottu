import 'package:flutter/material.dart';

import 'core/constants/constants.dart';
import 'presenter/view/home.dart';

void main() {
  runApp(
    const MaterialApp(
      color: ColorsMottu.monoBlack,
      title: StringsMottu.titleMaterialApp,
      debugShowCheckedModeBanner: false,
      home: HomeMottu(),
    ),
  );
}
