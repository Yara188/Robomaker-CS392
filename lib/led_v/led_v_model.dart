import '/flutter_flow/flutter_flow_util.dart';
import 'led_v_widget.dart' show LedVWidget;
import 'package:flutter/material.dart';

class LedVModel extends FlutterFlowModel<LedVWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
