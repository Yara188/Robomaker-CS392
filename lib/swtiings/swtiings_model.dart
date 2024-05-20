import '/flutter_flow/flutter_flow_util.dart';
import 'swtiings_widget.dart' show SwtiingsWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class SwtiingsModel extends FlutterFlowModel<SwtiingsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
