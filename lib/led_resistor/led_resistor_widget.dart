import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'led_resistor_model.dart';
export 'led_resistor_model.dart';

class LedResistorWidget extends StatefulWidget {
  const LedResistorWidget({super.key});

  @override
  State<LedResistorWidget> createState() => _LedResistorWidgetState();
}

class _LedResistorWidgetState extends State<LedResistorWidget> {
  late LedResistorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LedResistorModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});
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
                  'assets/images/IMG_3317.jpg',
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
                context.pushNamed('ledLevel4');
              },
              child: Icon(
                Icons.arrow_back_sharp,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 120.0,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.02, -0.89),
              child: Text(
                'Drag the resistor to the \nBreadboard and connect \none of its terminals to the \nlonger terminal of the LED.',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: const Color(0xFF001085),
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.06, -0.92),
              child: Container(
                width: 333.0,
                height: 150.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3.0,
                  ),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(0.96, 0.27),
              child: Icon(
                Icons.arrow_back,
                color: Color(0xFFFF002B),
                size: 70.0,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.83, 0.26),
              child: Container(
                width: 51.0,
                height: 49.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  border: Border.all(
                    color: const Color(0xFFFF0000),
                    width: 3.0,
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
                            'assets/images/resistore.png',
                            width: 40.0,
                            height: 100.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/resistore.png',
                          width: 40.0,
                          height: 100.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: Align(
                alignment: const AlignmentDirectional(0.03, -0.46),
                child: Container(
                  width: 115.0,
                  height: 66.0,
                  decoration: const BoxDecoration(
                    color: Color(0x56FFFFFF),
                  ),
                  child: DragTarget<String>(
                    onAcceptWithDetails: (details) async {
                      context.pushNamed('ledResistor2');

                      setState(() {});
                    },
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.61, 0.28),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
