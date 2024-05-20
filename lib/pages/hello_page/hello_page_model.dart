import '/flutter_flow/flutter_flow_util.dart';
import 'hello_page_widget.dart' show HelloPageWidget;
import 'package:flutter/material.dart';

class HelloPageModel extends FlutterFlowModel<HelloPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
