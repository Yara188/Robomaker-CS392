import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:just_audio/just_audio.dart';
import 'swtiings_model.dart';
export 'swtiings_model.dart';

class SwtiingsWidget extends StatefulWidget {
  const SwtiingsWidget({super.key});

  @override
  State<SwtiingsWidget> createState() => _SwtiingsWidgetState();
}

class _SwtiingsWidgetState extends State<SwtiingsWidget> {
  late SwtiingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwtiingsModel());

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
                  'assets/images/settings1.jpg',
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
                context.pushNamed('homepage');
              },
              child: Icon(
                Icons.arrow_back_sharp,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 120.0,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -0.55),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: SwitchListTile.adaptive(
                  key: const ValueKey('play'),
                  value: _model.switchListTileValue ??=
                      (true == false) || false,
                  onChanged: (newValue) async {
                    setState(() => _model.switchListTileValue = newValue);
                    if (newValue) {
                      _model.soundPlayer ??= AudioPlayer();
                      if (_model.soundPlayer!.playing) {
                        await _model.soundPlayer!.stop();
                      }
                      _model.soundPlayer!.setVolume(1.0);
                      _model.soundPlayer!
                          .setAsset(
                              'assets/audios/game-music-loop-7-145285.mp3')
                          .then((_) => _model.soundPlayer!.play());
                    } else {
                      _model.soundPlayer?.stop();
                    }
                  },
                  title: Text(
                    'Turn on\\off the sound',
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          fontSize: 38.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  activeColor: FlutterFlowTheme.of(context).success,
                  activeTrackColor: FlutterFlowTheme.of(context).alternate,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                  contentPadding: const EdgeInsets.all(30.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
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
