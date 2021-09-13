import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpPageWidget extends StatefulWidget {
  HelpPageWidget({Key key}) : super(key: key);

  @override
  _HelpPageWidgetState createState() => _HelpPageWidgetState();
}

class _HelpPageWidgetState extends State<HelpPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.darkBG,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.primaryBlack,
            shape: BoxShape.rectangle,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.darkBG,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Sleep',
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.darkBG,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Eat',
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.darkBG,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Repairs',
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.darkBG,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Talk',
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.darkBG,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Walk',
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.darkBG,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Check',
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.darkBG,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Hobby',
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.darkBG,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Work',
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
