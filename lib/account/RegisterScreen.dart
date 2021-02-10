import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( home: RegisterScreen(),));
}

class RegisterScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<RegisterScreen> {
  var _form_key= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register'),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),

        body:
        SingleChildScrollView(  // <-- wrap this around
       child: Form(
       key: _form_key,
            child: Column(
                children: <Widget>[

        Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15, top:25, right: 15, bottom:0),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter User Name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, top:15, right: 15, bottom:0),
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
                      labelText: 'Email Id',
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
                        return 'Please enter Mobile No';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mobile No',
                      hintText: 'Enter Your Mobile No',
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 15, top:15, right: 15, bottom:0),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter Password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                  ),
                ),

                Padding(
                 //,
                  padding: EdgeInsets.only(left: 15, top:15, right: 15, bottom:0),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please re enter Password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
                      hintText: 'Re Enter Password',
                    ),
                  ),
                ),
            
            Padding(
              padding: EdgeInsets.only(left: 15, top:25, right:15, bottom:0),
              child:RaisedButton(
                 padding:  EdgeInsets.all(20),
                  textColor: Colors.white,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Colors.blue)
                 ),
                  child: Text('Create new Account'),
                  onPressed: (){
                    if(_form_key.currentState.validate()){
                      Navigator.of(context).pop();
                    }
                  },
                )
            )],
            )
           )],))));
  }
}