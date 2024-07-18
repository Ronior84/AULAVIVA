import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'quiz_option_model.dart';
export 'quiz_option_model.dart';

class QuizOptionWidget extends StatefulWidget {
  const QuizOptionWidget({
    super.key,
    required this.questionNum,
    required this.questionName,
    required this.isTrue,
  });

  final String? questionNum;
  final String? questionName;
  final bool? isTrue;

  @override
  State<QuizOptionWidget> createState() => _QuizOptionWidgetState();
}

class _QuizOptionWidgetState extends State<QuizOptionWidget> {
  late QuizOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizOptionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        if (widget!.isTrue!) {
          if (_model.isAnswered != null) {
            _model.isAnswered = null;
            setState(() {});
            FFAppState().completedQuestons =
                FFAppState().completedQuestons + -1;
            setState(() {});
            FFAppState().score = FFAppState().score + -1;
            setState(() {});
          } else {
            _model.isAnswered = true;
            setState(() {});
            FFAppState().completedQuestons = FFAppState().completedQuestons + 1;
            setState(() {});
            FFAppState().score = FFAppState().score + 1;
            setState(() {});
          }
        } else {
          if (_model.isAnswered != null) {
            _model.isAnswered = null;
            setState(() {});
            FFAppState().completedQuestons =
                FFAppState().completedQuestons + -1;
            setState(() {});
          } else {
            _model.isAnswered = false;
            setState(() {});
            FFAppState().completedQuestons = FFAppState().completedQuestons + 1;
            setState(() {});
          }
        }
      },
      child: Container(
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            () {
              if (_model.isAnswered == true) {
                return Color(0xFF0F05C0);
              } else if (_model.isAnswered == false) {
                return Color(0xFF810A12);
              } else {
                return Color(0x1DFFFFFF);
              }
            }(),
            Colors.transparent,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8.0),
            bottomRight: Radius.circular(8.0),
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
          border: Border.all(
            color: valueOrDefault<Color>(
              () {
                if (_model.isAnswered == true) {
                  return Color(0xFF0F05C0);
                } else if (_model.isAnswered == false) {
                  return Color(0xFF810A12);
                } else {
                  return Color(0x1DFFFFFF);
                }
              }(),
              Colors.transparent,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 36.0,
                height: 36.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    () {
                      if (_model.isAnswered == true) {
                        return Color(0xFF0F05C0);
                      } else if (_model.isAnswered == false) {
                        return Color(0xFF810A12);
                      } else {
                        return Colors.transparent;
                      }
                    }(),
                    Colors.transparent,
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: valueOrDefault<Color>(
                      () {
                        if (_model.isAnswered == true) {
                          return Color(0xFF0F05C0);
                        } else if (_model.isAnswered == false) {
                          return Color(0xFF810A12);
                        } else {
                          return Colors.transparent;
                        }
                      }(),
                      Colors.transparent,
                    ),
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget!.questionNum,
                      '0',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(),
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: AutoSizeText(
                      valueOrDefault<String>(
                        widget!.questionName,
                        '0',
                      ),
                      textAlign: TextAlign.start,
                      maxLines: 4,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: Colors.white,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
