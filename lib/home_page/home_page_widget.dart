import '../confirmation_page/confirmation_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final pageViewController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                PageView(
                  controller: pageViewController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment(0, -1),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://github.com/TeoChirileanu/FlutterFlowBug/blob/main/assets/images/copacel.png?raw=true',
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.15, 0.74),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                            child: Container(
                              width: double.infinity,
                              height: 250,
                              decoration: BoxDecoration(
                                color: Color(0x80EEEEEE),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Align(
                                alignment: Alignment(0.01, -0.8),
                                child: AutoSizeText(
                                  'Un copacel frumos\ncare produce aer\n\nDoar \$0.99 USD!',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.title1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.1, 0.76),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Confirmare Plata'),
                                    content: Text(
                                        'Veti fi redirectionat pentru a face plata'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('M-am razgandit'),
                                      ),
                                      TextButton(
                                        onPressed: () async {
                                          Navigator.pop(alertDialogContext);
                                          await launchURL(
                                              'https://buy.stripe.com/bIY7tQaycgWj18saEG');
                                          ;
                                        },
                                        child: Text('Mergi si plateste'),
                                      ),
                                    ],
                                  );
                                },
                              );
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: ConfirmationPageWidget(),
                                ),
                              );
                            },
                            text: 'Cumpara acum!',
                            options: FFButtonOptions(
                              width: 250,
                              height: 40,
                              color: Color(0xF13474E0),
                              textStyle: FlutterFlowTheme.title2.override(
                                fontFamily: 'Poppins',
                              ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment(0, -1),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://github.com/TeoChirileanu/FlutterFlowBug/blob/main/assets/images/copac.png?raw=true',
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.15, 0.74),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                            child: Container(
                              width: double.infinity,
                              height: 250,
                              decoration: BoxDecoration(
                                color: Color(0x80EEEEEE),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Align(
                                alignment: Alignment(0.01, -0.8),
                                child: AutoSizeText(
                                  'Un copac credincios\ncare ofera umbra\n\nDoar €0.99 EUR!',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.title1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.1, 0.76),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Confirmare Plata'),
                                    content: Text(
                                        'Veti fi redirectionat pentru a face plata'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('M-am razgandit'),
                                      ),
                                      TextButton(
                                        onPressed: () async {
                                          Navigator.pop(alertDialogContext);
                                          await launchURL(
                                              'https://buy.stripe.com/14kcOafSw9tR4kEbIL');
                                          ;
                                        },
                                        child: Text('Mergi si plateste'),
                                      ),
                                    ],
                                  );
                                },
                              );
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: ConfirmationPageWidget(),
                                ),
                              );
                            },
                            text: 'Cumpara acum!',
                            options: FFButtonOptions(
                              width: 250,
                              height: 40,
                              color: Color(0xF13474E0),
                              textStyle: FlutterFlowTheme.title2.override(
                                fontFamily: 'Poppins',
                              ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment(0, -1),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://github.com/TeoChirileanu/FlutterFlowBug/blob/main/assets/images/copacoi.png?raw=true',
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.15, 0.74),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                            child: Container(
                              width: double.infinity,
                              height: 250,
                              decoration: BoxDecoration(
                                color: Color(0x80EEEEEE),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Align(
                                alignment: Alignment(0.01, -0.8),
                                child: AutoSizeText(
                                  'Un copacoi grasunoi\ncare acopera furnicoi\n\nDoar 2.49 RON!',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.title1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.1, 0.76),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Confirmare Plata'),
                                    content: Text(
                                        'Veti fi redirectionat pentru a face plata'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('M-am razgandit'),
                                      ),
                                      TextButton(
                                        onPressed: () async {
                                          Navigator.pop(alertDialogContext);
                                          await launchURL(
                                              'https://buy.stripe.com/bIY15s49ObBZ8AU7st');
                                          ;
                                        },
                                        child: Text('Mergi si plateste'),
                                      ),
                                    ],
                                  );
                                },
                              );
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: ConfirmationPageWidget(),
                                ),
                              );
                            },
                            text: 'Cumpara acum!',
                            options: FFButtonOptions(
                              width: 250,
                              height: 40,
                              color: Color(0xF13474E0),
                              textStyle: FlutterFlowTheme.title2.override(
                                fontFamily: 'Poppins',
                              ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 15,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Align(
                  alignment: Alignment(0, 1),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: SmoothPageIndicator(
                      controller: pageViewController,
                      count: 3,
                      axisDirection: Axis.horizontal,
                      onDotClicked: (i) {
                        pageViewController.animateToPage(
                          i,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      effect: ExpandingDotsEffect(
                        expansionFactor: 2,
                        spacing: 8,
                        radius: 16,
                        dotWidth: 16,
                        dotHeight: 16,
                        dotColor: Color(0xFF9E9E9E),
                        activeDotColor: Color(0xFF3F51B5),
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
