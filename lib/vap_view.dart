import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_vap/vap_view_for_android.dart';
import 'package:flutter_vap/vap_view_for_ios.dart';

class VapView extends StatelessWidget {
  const VapView({
    this.loops = 1,
  });

  /// Number of times video should be played
  final int loops;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return VapViewForAndroid(
        loops: loops,
      );
    } else if (Platform.isIOS) {
      return VapViewForIos();
    }
    return Container();
  }
}
