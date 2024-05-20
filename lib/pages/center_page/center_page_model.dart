import '/flutter_flow/flutter_flow_util.dart';
import 'center_page_widget.dart' show CenterPageWidget;
import 'package:flutter/material.dart';

class CenterPageModel extends FlutterFlowModel<CenterPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
