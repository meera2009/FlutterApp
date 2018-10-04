import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login/style/theme.dart' as Theme;

class ProfilePage extends StatefulWidget {

  final String value;

  ProfilePage({Key key, this.value}) : super(key: key);

  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

/* Placing Logo*/

  Widget logo = new Container (
    padding: new EdgeInsets.all(8.0),
    color: Colors.white,
    child: new Image(
      width: 250.0,
      height: 191.0,
      fit: BoxFit.fill,
      image: new AssetImage('assets/img/login_logo.png')),
  );

/* Design of middle section*/

  Widget middleSection = new Expanded(
    child: new Stack(
     alignment: const FractionalOffset(0.98, 1.12),
     children: <Widget>[new Container(
       decoration: new BoxDecoration(
            gradient: new LinearGradient(
              colors: [
                Theme.Colors.loginGradientStart,
                Theme.Colors.loginGradientEnd
              ]
            ),
            boxShadow: [
              new BoxShadow(
                color: Colors.grey[500],
                blurRadius: 20.0,
                spreadRadius: 1.0,
              )
            ]
          ),
       child: new Column(
         children: <Widget>[
           new Container(
             padding: const EdgeInsets.all(16.0),
               margin: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
               child: new Column(children: <Widget>[
                 new Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     new Container(
                       child:new Column(
                         children: <Widget>[
                            new Text(" 12",
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 45.0
                                )
                              ),
                            new Text("Posts",
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0
                              ))
                            ],
                        ),
                      ), 
                      new Column(
                        children: <Widget>[
                            new Text("Meera Monalisa",
                              style: new TextStyle(
                                fontFamily: "WorkSansSemiBold",
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 40.0
                              )
                            ),
                            new Text("Tech Lead",
                              textAlign: TextAlign.left,
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0
                            )
                          )
                        ],
                      )                
                   ]
                 ), 
              ],              
            ),
          ),new Row(
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child:new Column(
                         children: <Widget>[
                            new Text(" 23",
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 45.0
                                )
                              ),
                            new Text("Followings",
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0
                              )
                            ),  
                            new Text(" ",
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 45.0
                                )
                              ),                           
                            new Text(" 56",
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 45.0
                                )
                              ),
                            new Text("Followings",
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0
                              ))
                            ],
                        ),
                      ),
                      new Container(
                        height: 200.0,
                        width: 250.0,
                        child:new Column(
                         children: <Widget>[
                            new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15.0
                                )
                              ),
                            ],
                        ),
                      )                              
                   ], 
                 ),
              
             
                ],              
              ),
            ), 
            ]
          )
        )   ;


   
    
@override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Scaffold(
          key: _scaffoldKey,
          appBar: new PreferredSize(
            preferredSize: new Size(MediaQuery.of(context).size.width, 64.0),
            child: new Container(
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  colors: [
                    Theme.Colors.loginGradientStart,
                    Theme.Colors.loginGradientEnd
                  ]
                ),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey[500],
                    blurRadius: 20.0,
                    spreadRadius: 1.0,
                )
              ]
            ),
             child: new Container(
                  margin:const EdgeInsets.only(top: 30.0),
                  child: new Column(children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new IconButton(
                                icon: new Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pop(context, false);
                                }
                            ),
                            new Text(
                              "Profile",
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 25.0
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]
                  )
              )
            )
          ),
          body: new Column(
              // This makes each child fill the full width of the screen
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                logo,
                middleSection,
            ],
          ),
        ),
        new Positioned(
          child: new FloatingActionButton(
            child: new Icon(Icons.add),
            onPressed: () {
              showInSnackBar("FAB button pressed");
            },
            backgroundColor: Colors.purple[600]
          ),
          left: 50.0,
          top: 264.0,
        )
      ],
    );
  }

  
  @override
  void dispose() {   
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

  }

   
 void showInSnackBar(String value) {
    FocusScope.of(context).requestFocus(new FocusNode());
    _scaffoldKey.currentState?.removeCurrentSnackBar();
    _scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 16.0,
            fontFamily: "WorkSansBold"),
      ),
      backgroundColor: Colors.white,
      duration: Duration(seconds: 3),
    ));
  }
  
}

