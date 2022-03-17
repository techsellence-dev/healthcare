import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({Key key}) : super(key: key);

  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  TextEditingController emailFieldController;
  TextEditingController usernameFieldController;
  TextEditingController passwordFieldController;
  bool passwordFieldVisibility;
  TextEditingController reenterPasswordFieldController;
  bool reenterPasswordFieldVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailFieldController = TextEditingController();
    usernameFieldController = TextEditingController();
    passwordFieldController = TextEditingController();
    passwordFieldVisibility = false;
    reenterPasswordFieldController = TextEditingController();
    reenterPasswordFieldVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryColor,
          automaticallyImplyLeading: false,
          flexibleSpace: Text(
            'Sign Up',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).title1.override(
                  fontFamily: 'Poppins',
                  fontSize: 29,
                  lineHeight: 6,
                ),
          ),
          actions: [],
          elevation: 2,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 150, 15, 6),
                child: TextFormField(
                  onChanged: (_) => EasyDebounce.debounce(
                    'usernameFieldController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  controller: usernameFieldController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Username',
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
                    filled: true,
                    fillColor: Color(0xFFA9ACBD),
                    contentPadding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                    suffixIcon: usernameFieldController.text.isNotEmpty
                        ? InkWell(
                            onTap: () => setState(
                              () => usernameFieldController.clear(),
                            ),
                            child: Icon(
                              Icons.clear,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          )
                        : null,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 6),
                child: TextFormField(
                  onChanged: (_) => EasyDebounce.debounce(
                    'emailFieldController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  controller: emailFieldController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Email',
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
                    filled: true,
                    fillColor: Color(0xFFA9ACBD),
                    contentPadding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                    suffixIcon: emailFieldController.text.isNotEmpty
                        ? InkWell(
                            onTap: () => setState(
                              () => emailFieldController.clear(),
                            ),
                            child: Icon(
                              Icons.clear,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          )
                        : null,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                  textAlign: TextAlign.start,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1, 1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 12, 15, 6),
                  child: TextFormField(
                    controller: passwordFieldController,
                    obscureText: !passwordFieldVisibility,
                    decoration: InputDecoration(
                      labelText: 'Password',
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
                      filled: true,
                      fillColor: Color(0xFFA9ACBD),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordFieldVisibility =
                              !passwordFieldVisibility,
                        ),
                        child: Icon(
                          passwordFieldVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1, 1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 12, 15, 6),
                  child: TextFormField(
                    controller: reenterPasswordFieldController,
                    obscureText: !reenterPasswordFieldVisibility,
                    decoration: InputDecoration(
                      labelText: 'Re-enter Password',
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
                      filled: true,
                      fillColor: Color(0xFFA9ACBD),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => reenterPasswordFieldVisibility =
                              !reenterPasswordFieldVisibility,
                        ),
                        child: Icon(
                          reenterPasswordFieldVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (passwordFieldController.text !=
                        reenterPasswordFieldController.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Passwords don\'t match!',
                          ),
                        ),
                      );
                      return;
                    }

                    final user = await createAccountWithEmail(
                      context,
                      emailFieldController.text,
                      passwordFieldController.text,
                    );
                    if (user == null) {
                      return;
                    }

                    await Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePageWidget(),
                      ),
                      (r) => false,
                    );
                  },
                  text: 'Sign Up',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 31, 0, 0),
                child: Text(
                  'Or, Sign with',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                ),
              ),
              InkWell(
                onTap: () async {
                  final user = await signInWithGoogle(context);
                  if (user == null) {
                    return;
                  }
                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageWidget(),
                    ),
                    (r) => false,
                  );
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF090F13),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x3314181B),
                        offset: Offset(0, 2),
                      )
                    ],
                    shape: BoxShape.circle,
                  ),
                  alignment: AlignmentDirectional(0, 0),
                  child: FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                    size: 24,
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
