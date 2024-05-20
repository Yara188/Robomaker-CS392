import '/flutter_flow/flutter_flow_util.dart';
import 'good_gob_widget.dart' show GoodGobWidget;
import 'package:flutter/material.dart';

class GoodGobModel extends FlutterFlowModel<GoodGobWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
