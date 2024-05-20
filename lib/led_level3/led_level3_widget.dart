import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'led_level3_model.dart';
export 'led_level3_model.dart';

class LedLevel3Widget extends StatefulWidget {
  const LedLevel3Widget({super.key});

  @override
  State<LedLevel3Widget> createState() => _LedLevel3WidgetState();
}

class _LedLevel3WidgetState extends State<LedLevel3Widget> {
  late LedLevel3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LedLevel3Model());
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
                  'assets/images/let.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('ledLevel2');
              },
              child: Icon(
                Icons.arrow_back_sharp,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 120.0,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.04, -0.11),
              child: Container(
                width: 171.0,
                height: 217.0,
                decoration: const BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
                child: Opacity(
                  opacity: 0.0,
                  child: DragTarget<String>(
                    onAcceptWithDetails: (details) async {
                      context.pushNamed('ledLevel4');

                      setState(() {});
                    },
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.84, -0.91),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: const Color(0x00151820),
                  border: Border.all(
                    color: const Color(0xFFFF0000),
                    width: 3.0,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Draggable<String>(
                        data: '',
                        feedback: Material(
                          type: MaterialType.transparency,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/NicePng_straight-lines-png_1588877.png',
                              width: 200.0,
                              height: 72.0,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/NicePng_straight-lines-png_1588877.png',
                            width: 200.0,
                            height: 72.0,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.86, 0.54),
              child: Text(
                'Please Drag\n the wire \nabove me',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: const Color(0xFF042B6C),
                      fontSize: 30.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.9, 0.61),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(100.0, 100.0, 0.0, 0.0),
                child: Container(
                  width: 259.0,
                  height: 259.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 5.0,
                    ),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(0.99, -0.83),
              child: Icon(
                Icons.arrow_back,
                color: Color(0xFFFF0000),
                size: 70.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
