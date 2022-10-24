import 'package:flutter/widgets.dart';

extension CustomExtension on Widget {
  toCenter() {
    return Center(
      child: this,
    );
  }
}
