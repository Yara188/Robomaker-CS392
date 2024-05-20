import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'choose_level_model.dart';
export 'choose_level_model.dart';

class ChooseLevelWidget extends StatefulWidget {
  const ChooseLevelWidget({super.key});

  @override
  State<ChooseLevelWidget> createState() => _ChooseLevelWidgetState();
}

class _ChooseLevelWidgetState extends State<ChooseLevelWidget> {
  late ChooseLevelModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooseLevelModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/3levels.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: Align(
                alignment: const AlignmentDirectional(-0.67, 0.09),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('led_instructions');
                  },
                  text: '',
                  options: FFButtonOptions(
                    width: 261.0,
                    height: 258.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 70.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0x00FFFFFF),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(90.0),
                      bottomRight: Radius.circular(90.0),
                      topLeft: Radius.circular(90.0),
                      topRight: Radius.circular(90.0),
                    ),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.14),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('montro_servo');
                  },
                  text: '',
                  options: FFButtonOptions(
                    width: 288.0,
                    height: 248.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 70.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0x03FFFFFF),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(90.0),
                      bottomRight: Radius.circular(90.0),
                      topLeft: Radius.circular(90.0),
                      topRight: Radius.circular(90.0),
                    ),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: Align(
                alignment: const AlignmentDirectional(0.67, 0.11),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('null');
                  },
                  text: '',
                  options: FFButtonOptions(
                    width: 250.0,
                    height: 265.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 70.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0x00FFFFFF),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(90.0),
                      bottomRight: Radius.circular(90.0),
                      topLeft: Radius.circular(90.0),
                      topRight: Radius.circular(90.0),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('homepage');
              },
              child: Icon(
                Icons.arrow_back_sharp,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 120.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
