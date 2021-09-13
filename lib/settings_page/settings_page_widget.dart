import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login_page/login_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPageWidget extends StatefulWidget {
  SettingsPageWidget({Key key}) : super(key: key);

  @override
  _SettingsPageWidgetState createState() => _SettingsPageWidgetState();
}

class _SettingsPageWidgetState extends State<SettingsPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.darkBG,
      body: SafeArea(
        child: FFButtonWidget(
          onPressed: () async {
            await signOut();
            await Navigator.pushAndRemoveUntil(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                duration: Duration(milliseconds: 100),
                reverseDuration: Duration(milliseconds: 100),
                child: LoginPageWidget(),
              ),
              (r) => false,
            );
          },
          text: 'Sign Out',
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
      ),
    );
  }
}
