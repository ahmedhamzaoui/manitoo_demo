import 'package:flutter/material.dart';
import 'package:manitoo_demo/src/controllers/user_controller.dart';
import 'package:manitoo_demo/src/elements/BlockButtonWidget.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:manitoo_demo/config/app_config.dart' as config;

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends StateMVC<LoginWidget> {
  UserController _con;

  _LoginWidgetState() : super(UserController()) {
    _con = controller;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
    onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Positioned(
              top: 0,
              child: Container(
                width: config.App(context).appWidth(100),
                height: config.App(context).appHeight(37),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/img/marine_cargo.png'),
                  fit: BoxFit.fill,
                )),
              ),
            ),
            Positioned(
              top: config.App(context).appHeight(37) - 50,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 50,
                        color: Color(0xFF344968).withOpacity(0.2),
                      )
                    ]),
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.fromLTRB(27,2,27,10),
                width: config.App(context).appWidth(88),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image(
                         image: AssetImage('assets/img/logo.png'),

                        width: config.App(context).appWidth(10),
                          ),
                      SizedBox(height: 20,),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Color(0xFF5C6369)),
                          contentPadding: EdgeInsets.all(12),
                          hintText: 'manitoo_client@gmail.com',
                          hintStyle: TextStyle(color: Color(0xFF5C6369).withOpacity(0.7)),
                          prefixIcon: Icon(Icons.alternate_email, color: Color(0xFF9C1040),),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF5C6369).withOpacity(0.2))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF5C6369).withOpacity(0.5))),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color :Color(0xFF5C6369).withOpacity(0.2))),

                        ),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Mot de passe',
                          labelStyle: TextStyle(color: Color(0xFF5C6369)),
                          contentPadding: EdgeInsets.all(12),
                          hintText: '••••••••••••',
                          hintStyle: TextStyle(color: Color(0xFF5C6369).withOpacity(0.7)),
                          prefixIcon: Icon(Icons.lock_outline, color: Color(0xFF9C1040)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF5C6369).withOpacity(0.2))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF5C6369).withOpacity(0.5))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color :Color(0xFF5C6369).withOpacity(0.2))),
                        )
                      ),

                      SizedBox(height: 30),
                      BlockButtonWidget(
                          color: Color(0xFF9C1040),
                          text: Text(
                            'S\'identifier',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: (){}
                          ),
                      SizedBox(height: 25),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: (){
                      // Navigator.of(context).pushReplacementNamed('/SignUp');
                    },
                    textColor: Color(0xFF9C1040),
                    child: Text('Mot de passe oublié ?'),

                  ),
                  FlatButton(
                      onPressed: () {
                        // Navigator.of(context).pushReplacementNamed('/SignUp');
                      },
                      child: Text('J\'ai pas de compte ?'),
                      textColor: Color(0xFF9C1040),
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
