import '/flutter_flow/flutter_flow_util.dart';
import 'led_v2_widget.dart' show LedV2Widget;
import 'package:flutter/material.dart';

class LedV2Model extends FlutterFlowModel<LedV2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
