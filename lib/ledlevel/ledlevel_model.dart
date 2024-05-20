import '/flutter_flow/flutter_flow_util.dart';
import 'ledlevel_widget.dart' show LedlevelWidget;
import 'package:flutter/material.dart';

class LedlevelModel extends FlutterFlowModel<LedlevelWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
