import 'package:first_app/account/RegisterScreen.dart';
import 'package:first_app/home/NewsTabScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( home: LoginScreen(),));
}

class LoginScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LoginScreen> {
  var _form_key= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Form(
        key: _form_key,
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.only(left: 15, top:25, right: 15, bottom:0),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter Email ID';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email ID',
                      hintText: 'Enter Your Email',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, top:15, right: 15, bottom:0),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password'
                    ),
                  ),
                ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children:<Widget>[
               Padding(
                   padding:EdgeInsets.only(left: 15, top:15, right: 0, bottom:15),
                   child:RichText(
                text: TextSpan(
                  text: 'Forgot Password',
                  style: TextStyle(color: Colors.black,fontSize: 15),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('click')),
              )),


               Padding(
                   padding:EdgeInsets.only(left: 0, top:15, right: 15, bottom:15),
                   child:RichText(
                text: TextSpan(
                    text: 'Create account',
                    style:TextStyle(color: Colors.black,fontSize: 15),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () =>Navigator.of(context).push(_createRoute()),
              )))]),

            Padding(
              padding: EdgeInsets.only(left: 15, top:25, right: 25, bottom:0),
              child:RaisedButton(
                padding:  EdgeInsets.all(20),
                textColor: Colors.white,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Colors.blue)
                ),
                  child: Text('Login to app'),
                  onPressed: (){
                    if(_form_key.currentState.validate()){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder:
                              (context) => NewsTabScreen()));
                    }
                  },
                )
            )],
            )
         )
        )
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => RegisterScreen(),
    transitionsBuilder:(context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end);
      var curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: curve,
      );

      return SlideTransition(
        position: tween.animate(curvedAnimation),
        child: child,
      );
    }
    );
  }
}