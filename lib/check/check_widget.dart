import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckWidget extends StatefulWidget {
  CheckWidget({Key key}) : super(key: key);

  @override
  _CheckWidgetState createState() => _CheckWidgetState();
}

class _CheckWidgetState extends State<CheckWidget> {
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
            color: FlutterFlowTheme.darkBG,
            shape: BoxShape.rectangle,
          ),
          child: Stack(
            children: [
              ClipRect(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 2,
                    sigmaY: 2,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.darkBG,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 50),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Back',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: FlutterFlowTheme.primaryColor,
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(1, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Text(
                                'Check',
                                style: FlutterFlowTheme.title2.override(
                                  fontFamily: 'Lexend Deca',
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  StreamBuilder<List<FleetRecord>>(
                    stream: queryFleetRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: SpinKitRipple(
                              color: Color(0xFF1F8F44),
                              size: 50,
                            ),
                          ),
                        );
                      }
                      List<FleetRecord> columnFleetRecordList = snapshot.data;
                      // Customize what your widget looks like with no query results.
                      if (snapshot.data.isEmpty) {
                        return Material(
                          child: Container(
                            height: 100,
                            child: Center(
                              child: Text('No results.'),
                            ),
                          ),
                        );
                      }
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(columnFleetRecordList.length,
                              (columnIndex) {
                            final columnFleetRecord =
                                columnFleetRecordList[columnIndex];
                            return Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.grayBG,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 20, 20, 20),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Hello World',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.darkBG,
                                          ),
                                        ),
                                        Text(
                                          'Hello World',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.darkBG,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            );
                          }),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(100, 0, 0, 0),
                    child: IconButton(
                      onPressed: () async {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Sleep'),
                              content: Text(
                                  'It\'s important to get enough sleep ...'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.info,
                        color: FlutterFlowTheme.primaryColor,
                        size: 30,
                      ),
                      iconSize: 30,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: StreamBuilder<List<ActivitiesRecord>>(
                          stream: queryActivitiesRecord(
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: SpinKitRipple(
                                    color: Color(0xFF1F8F44),
                                    size: 50,
                                  ),
                                ),
                              );
                            }
                            List<ActivitiesRecord>
                                toggleIconActivitiesRecordList = snapshot.data;
                            // Customize what your widget looks like with no query results.
                            if (snapshot.data.isEmpty) {
                              return Material(
                                child: Container(
                                  height: 100,
                                  child: Center(
                                    child: Text('No results.'),
                                  ),
                                ),
                              );
                            }
                            final toggleIconActivitiesRecord =
                                toggleIconActivitiesRecordList.first;
                            return ToggleIcon(
                              onPressed: () async {
                                final activitiesUpdateData =
                                    createActivitiesRecordData(
                                  check: !toggleIconActivitiesRecord.check,
                                );
                                await toggleIconActivitiesRecord.reference
                                    .update(activitiesUpdateData);
                              },
                              value: toggleIconActivitiesRecord.check,
                              onIcon: Icon(
                                Icons.radio_button_checked_outlined,
                                color: Color(0xFF1EB44D),
                                size: 100,
                              ),
                              offIcon: Icon(
                                Icons.radio_button_off_outlined,
                                color: Color(0xFFB00E10),
                                size: 100,
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
