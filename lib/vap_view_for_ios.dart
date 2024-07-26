import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class VapViewForIos extends StatelessWidget {
  const VapViewForIos({
    this.loops = 1,
  });

  final int loops;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> creationParams = <String, dynamic>{
      'loops': loops,
    };
    return UiKitView(
      viewType: "flutter_vap",
      layoutDirection: TextDirection.ltr,
      creationParams: creationParams,
      creationParamsCodec: StandardMessageCodec(),
    );
  }
}
