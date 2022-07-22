import 'package:flutter/material.dart';
import 'package:mottu_poc/src/core/constants/colors_mottu.dart';

import '../widgets/widgets.dart';

class HomeMottu extends StatelessWidget {
  const HomeMottu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsMottu.monoBlack,
      body: BodyHomeWidget(),
    );
  }
}
