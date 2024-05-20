import '/flutter_flow/flutter_flow_util.dart';
import 'led_level2_widget.dart' show LedLevel2Widget;
import 'package:flutter/material.dart';

class LedLevel2Model extends FlutterFlowModel<LedLevel2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
