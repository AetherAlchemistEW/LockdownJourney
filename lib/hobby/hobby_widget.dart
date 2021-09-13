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

class HobbyWidget extends StatefulWidget {
  HobbyWidget({Key key}) : super(key: key);

  @override
  _HobbyWidgetState createState() => _HobbyWidgetState();
}

class _HobbyWidgetState extends State<HobbyWidget> {
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
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 300),
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
                                'Hobby',
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
                                  hobby: !toggleIconActivitiesRecord.hobby,
                                );
                                await toggleIconActivitiesRecord.reference
                                    .update(activitiesUpdateData);
                              },
                              value: toggleIconActivitiesRecord.hobby,
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
