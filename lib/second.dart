import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

//https://mjsentertainment.co.uk/app-home/
//https://mjsentertainment.co.uk/app-contact-us/
//https://www.youtube.com/channel/UC-tTVRgSWvYhtQNTIjwoaQg?view_as=subscriber
//https://www.instagram.com/mjsentertainments/
class _SecondScreenState extends State<SecondScreen> {
  _launchFB() async {
    const url = 'https://web.facebook.com/MJSEntertainments?_rdc=1&_rdr';

    if (await canLaunch(
      url,
    )) {
      await launch(
        url,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchYoutube() async {
    const url =
        'https://www.youtube.com/channel/UC-tTVRgSWvYhtQNTIjwoaQg?view_as=subscriber';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchHome() async {
    const url = 'https://mjsentertainment.co.uk/app-home/';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchIG() async {
    const url = 'https://www.instagram.com/mjsentertainments/';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchContact() async {
    const url = 'https://mjsentertainment.co.uk/app-contact-us/';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    super.initState();
    //_launchask();
    // Timer(Duration(seconds: 7), () {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => WebViewScreen()));
    // });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, 'Back');
        return new Future(() => false);
      },
      child: Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   title:
        //       Image.asset('assets/images/eyecandylogo.png', fit: BoxFit.cover),
        // ),
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30, left: 15.0, right: 15.0, bottom: 15),
                  child:
                      Image.asset('assets/images/logo.png', fit: BoxFit.cover),
                ),
                /*  Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 50.0,
                        right: 50,
                        bottom: 14,
                      ),
                      child: Text(
                        "Welcome Text",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 14,
                      ),
                      child: Text(
                        "Some Other Text.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 14,
                      ),
                      child: Text(
                        "text",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),*/
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: _launchHome,
                  child: Container(
                      height: 200,
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          /*Image.asset(
                            "assets/images/asf.jpeg",
                            fit: BoxFit.cover,
                            height: 70,
                          ),*/
                          Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                            size: 90,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                              vertical: 14,
                            ),
                            child: Text(
                              "Home",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: _launchContact,
                  child: Container(
                      height: 200,
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/contact.png",
                            fit: BoxFit.cover,
                            height: 70,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                              vertical: 14,
                            ),
                            child: Text(
                              "Contact Us",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: _launchFB,
                          child: Container(
                            margin: EdgeInsets.all(15),
                            width: 80.0,
                            height: 80.0,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              FontAwesomeIcons.facebookF,
                              size: 40,
                            ),
                          )),
                      GestureDetector(
                          onTap: _launchYoutube,
                          child: Container(
                            margin: EdgeInsets.all(15),
                            width: 80.0,
                            height: 80.0,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              FontAwesomeIcons.youtube,
                              size: 40,
                            ),
                          )),
                      GestureDetector(
                          onTap: _launchIG,
                          child: Container(
                            margin: EdgeInsets.all(15),
                            width: 80.0,
                            height: 80.0,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              FontAwesomeIcons.instagram,
                              size: 40,
                            ),
                          )),
                    ],
                  ),
                ),

                /*   GestureDetector(
                  onTap: _launchIG,
                  child: Image.asset(
                    "assets/images/instagram.jpeg",
                    fit: BoxFit.cover,
                    height: 70,
                  ),
                ),
                GestureDetector(
                  onTap: _launchFB,
                  child: Image.asset(
                    "assets/images/facebook.jpeg",
                    fit: BoxFit.cover,
                    height: 70,
                  ),
                ),
              */ //   Center(
                //     child:  JumpingDotsProgressIndicator(
                //   fontSize: 40.0,
                //   numberOfDots: 4,
                //   color: Colors.black,
                // )
                //     // Text(
                //     //   "Afspraak maken",
                //     //   style: TextStyle(
                //     //     color: Colors.black,
                //     //     fontSize: 18,
                //     //   ),
                //     // ),
                //   ),
                //   Column(
                //     children: <Widget>[
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: <Widget>[
                //           GestureDetector(
                //             onTap: _launchFB,
                //             child: Image.asset(
                //               "assets/images/facebook.png",
                //               height: 50,
                //               width: 50,
                //               fit: BoxFit.cover,
                //             ),
                //           ),
                //           SizedBox(
                //             width: 30,
                //           ),
                //           GestureDetector(
                //             onTap: _launchIG,
                //             child: Image.asset(
                //               "assets/images/insta.png",
                //               height: 50,
                //               width: 50,
                //               fit: BoxFit.cover,
                //             ),
                //           ),
                //           SizedBox(
                //             width: 30,
                //           ),
                //           GestureDetector(
                //             onTap: _launchWH,
                //             child: Image.asset(
                //               "assets/images/whatsapp.png",
                //               height: 50,
                //               width: 50,
                //               fit: BoxFit.cover,
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
