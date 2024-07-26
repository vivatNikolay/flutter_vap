import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class VapViewForAndroid extends StatelessWidget {
  const VapViewForAndroid({
    this.loops = 1,
  });

  /// Number of times video should be played
  final int loops;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> creationParams = <String, dynamic>{
      'loops': loops,
    };
    return AndroidView(
      viewType: "flutter_vap",
      layoutDirection: TextDirection.ltr,
      creationParams: creationParams,
      creationParamsCodec: StandardMessageCodec(),
    );
  }
}
