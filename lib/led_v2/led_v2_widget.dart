import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'led_v2_model.dart';
export 'led_v2_model.dart';

class LedV2Widget extends StatefulWidget {
  const LedV2Widget({super.key});

  @override
  State<LedV2Widget> createState() => _LedV2WidgetState();
}

class _LedV2WidgetState extends State<LedV2Widget> {
  late LedV2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LedV2Model());
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
                  'assets/images/IMG_3318.jpg',
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
                context.pushNamed('ledV');
              },
              child: Icon(
                Icons.arrow_back_sharp,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 120.0,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.88, 0.61),
              child: Text(
                'Drag the wire \nabove me to \nconnect them',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: const Color(0xFF052C87),
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.86, -0.92),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  border: Border.all(
                    color: const Color(0xFFFF0000),
                    width: 1.0,
                  ),
                ),
                child: Stack(
                  children: [
                    Draggable<String>(
                      data: '',
                      feedback: Material(
                        type: MaterialType.transparency,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/knockout.png',
                            width: 300.0,
                            height: 245.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/knockout.png',
                          width: 300.0,
                          height: 245.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(1.02, -0.83),
              child: Icon(
                Icons.arrow_back,
                color: Color(0xFFFF0000),
                size: 70.0,
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: Align(
                alignment: const AlignmentDirectional(0.12, 1.13),
                child: Container(
                  width: 241.0,
                  height: 269.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: DragTarget<String>(
                    onAcceptWithDetails: (details) async {
                      context.pushNamed('goodGob');

                      setState(() {});
                    },
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.91, 0.73),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(100.0, 100.0, 0.0, 0.0),
                child: Container(
                  width: 230.0,
                  height: 230.0,
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
          ],
        ),
      ),
    );
  }
}
