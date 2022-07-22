import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constants/constants.dart';
import 'widgets.dart';

class BodyHomeWidget extends StatefulWidget {
  const BodyHomeWidget({Key? key}) : super(key: key);

  @override
  _BodyHomeState createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHomeWidget> {
  static const channelKotlin = MethodChannel(StringsMottu.channelKotlin);
  String? nativeMessageKotlin;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(DimensMottu.xxxs),
            child: ImageHomeWidget(
              name: StringsMottu.mottuLogo,
              width: DimensMottu.xxx,
              height: DimensMottu.xxx,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: DimensMottu.xxxs),
            child: Center(
              child: Text(
                StringsMottu.titleHomePage,
                style: TextStyle(
                  color: ColorsMottu.monoWhite,
                  fontSize: DimensMottu.xx,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              callNativeKotlin();
            },
            child: Image.asset(
              StringsMottu.mottuImage,
              width: DimensMottu.sm,
              height: DimensMottu.sm,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(DimensMottu.xxxs),
            child: Center(
              child: Text(
                nativeMessageKotlin ?? "",
                style: const TextStyle(
                  color: ColorsMottu.monoWhite,
                  fontSize: DimensMottu.xxxs,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> callNativeKotlin() async {
    String _messageKotlin;
    try {
      final String result = await channelKotlin.invokeMethod('POC');
      _messageKotlin = result;
    } on Exception catch (e, s) {
      _messageKotlin = "ERROR(E, S): ${e.toString()} $s";
    }
    setState(
      () {
        nativeMessageKotlin = _messageKotlin;
      },
    );
  }
}
