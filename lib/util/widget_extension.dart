import 'package:flutter/widgets.dart';

extension WidgetPadding on Widget {
  Widget paddingHorizontal(double padding) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: this,
    );
  }
}
