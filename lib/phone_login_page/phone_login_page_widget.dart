import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../sms_verify_page/sms_verify_page_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneLoginPageWidget extends StatefulWidget {
  PhoneLoginPageWidget({Key key}) : super(key: key);

  @override
  _PhoneLoginPageWidgetState createState() => _PhoneLoginPageWidgetState();
}

class _PhoneLoginPageWidgetState extends State<PhoneLoginPageWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          Align(
            alignment: Alignment(0, 0),
            child: CachedNetworkImage(
              imageUrl:
                  'https://github.com/TeoChirileanu/FlutterFlowBug/blob/main/assets/images/padure.jpg?raw=true',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 5),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://github.com/TeoChirileanu/FlutterFlowBug/blob/main/assets/images/logo%20(2).png?raw=true',
                        width: 300,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.transparent,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
                        child: TextFormField(
                          controller: textController,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Phone Number',
                            hintStyle: FlutterFlowTheme.title1.override(
                              fontFamily: 'Poppins',
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
                            fontFamily: 'Poppins',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.transparent,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (textController.text.isEmpty ||
                              !textController.text.startsWith('+')) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    'Phone Number is required and has to start with +.'),
                              ),
                            );
                            return;
                          }
                          await beginPhoneAuth(
                            context: context,
                            phoneNumber: textController.text,
                            onCodeSent: () async {
                              await Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SmsVerifyPageWidget(),
                                ),
                                (r) => false,
                              );
                            },
                          );
                        },
                        text: 'Sign in',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: Color(0xB83474E0),
                          textStyle: FlutterFlowTheme.title2.override(
                            fontFamily: 'Poppins',
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
