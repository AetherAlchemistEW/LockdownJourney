import '../backend/backend.dart';
import '../check/check_widget.dart';
import '../eat/eat_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../help_page/help_page_widget.dart';
import '../hobby/hobby_widget.dart';
import '../repairs/repairs_widget.dart';
import '../settings_page/settings_page_widget.dart';
import '../sleep/sleep_widget.dart';
import '../talk/talk_widget.dart';
import '../walk/walk_widget.dart';
import '../work/work_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksWidget extends StatefulWidget {
  TasksWidget({Key key}) : super(key: key);

  @override
  _TasksWidgetState createState() => _TasksWidgetState();
}

class _TasksWidgetState extends State<TasksWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController(text: 'My Ship');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.primaryColor,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: textController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: '[Some hint text...]',
                    hintStyle: FlutterFlowTheme.title1.override(
                      fontFamily: 'Lexend Deca',
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.title1.override(
                    fontFamily: 'Lexend Deca',
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 100),
                            reverseDuration: Duration(milliseconds: 100),
                            child: HelpPageWidget(),
                          ),
                        );
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.bookReader,
                        color: FlutterFlowTheme.grayBG,
                        size: 30,
                      ),
                      iconSize: 30,
                    ),
                    IconButton(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 100),
                            reverseDuration: Duration(milliseconds: 100),
                            child: SettingsPageWidget(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.settings,
                        color: FlutterFlowTheme.grayBG,
                        size: 35,
                      ),
                      iconSize: 35,
                    )
                  ],
                )
              ],
            ),
          ),
          actions: [],
          elevation: 10,
        ),
      ),
      backgroundColor: FlutterFlowTheme.darkBG,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  StreamBuilder<List<StatusRecord>>(
                    stream: queryStatusRecord(
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
                      List<StatusRecord> rowStatusRecordList = snapshot.data;
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
                      final rowStatusRecord = rowStatusRecordList.first;
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'XP:',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                            ),
                          ),
                          Text(
                            rowStatusRecord.exp.toString(),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                            ),
                          )
                        ],
                      );
                    },
                  ),
                  StreamBuilder<List<StatusRecord>>(
                    stream: queryStatusRecord(
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
                      List<StatusRecord> rowStatusRecordList = snapshot.data;
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
                      final rowStatusRecord = rowStatusRecordList.first;
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Lvl:',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                            ),
                          ),
                          Text(
                            rowStatusRecord.level.toString(),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                            ),
                          )
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 100),
                            reverseDuration: Duration(milliseconds: 100),
                            child: SleepWidget(),
                          ),
                        );
                      },
                      text: 'Sleep',
                      options: FFButtonOptions(
                        width: 300,
                        height: 60,
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
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 100),
                            reverseDuration: Duration(milliseconds: 100),
                            child: EatWidget(),
                          ),
                        );
                      },
                      text: 'Eat',
                      options: FFButtonOptions(
                        width: 300,
                        height: 60,
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
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 100),
                            reverseDuration: Duration(milliseconds: 100),
                            child: RepairsWidget(),
                          ),
                        );
                      },
                      text: 'Repairs',
                      options: FFButtonOptions(
                        width: 300,
                        height: 60,
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
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 100),
                            reverseDuration: Duration(milliseconds: 100),
                            child: WorkWidget(),
                          ),
                        );
                      },
                      text: 'Work',
                      options: FFButtonOptions(
                        width: 300,
                        height: 60,
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
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 100),
                            reverseDuration: Duration(milliseconds: 100),
                            child: CheckWidget(),
                          ),
                        );
                      },
                      text: 'Check',
                      options: FFButtonOptions(
                        width: 300,
                        height: 60,
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
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 100),
                            reverseDuration: Duration(milliseconds: 100),
                            child: TalkWidget(),
                          ),
                        );
                      },
                      text: 'Talk',
                      options: FFButtonOptions(
                        width: 300,
                        height: 60,
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
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 100),
                            reverseDuration: Duration(milliseconds: 100),
                            child: WalkWidget(),
                          ),
                        );
                      },
                      text: 'Walk',
                      options: FFButtonOptions(
                        width: 300,
                        height: 60,
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
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 100),
                            reverseDuration: Duration(milliseconds: 100),
                            child: HobbyWidget(),
                          ),
                        );
                      },
                      text: 'Hobby',
                      options: FFButtonOptions(
                        width: 300,
                        height: 60,
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
