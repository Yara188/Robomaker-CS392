import '/flutter_flow/flutter_flow_util.dart';
import 'montro_servo_widget.dart' show MontroServoWidget;
import 'package:flutter/material.dart';

class MontroServoModel extends FlutterFlowModel<MontroServoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
