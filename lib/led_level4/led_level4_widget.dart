import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'led_level4_model.dart';
export 'led_level4_model.dart';

class LedLevel4Widget extends StatefulWidget {
  const LedLevel4Widget({super.key});

  @override
  State<LedLevel4Widget> createState() => _LedLevel4WidgetState();
}

class _LedLevel4WidgetState extends State<LedLevel4Widget> {
  late LedLevel4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LedLevel4Model());
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
                  'assets/images/IMG_3316.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fill,
                  alignment: const Alignment(0.0, 0.0),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('ledLevel3');
              },
              child: Icon(
                Icons.arrow_back_sharp,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 120.0,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.84, -0.5),
              child: Text(
                'Good job',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: const Color(0xFF001085),
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.97, 0.92),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('ledResistor');
                },
                text: 'Next',
                options: FFButtonOptions(
                  width: 200.0,
                  height: 70.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.black,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter',
                        color: Colors.white,
                        fontSize: 30.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w900,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}