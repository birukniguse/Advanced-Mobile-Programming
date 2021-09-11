import 'package:flutter/material.dart';

import 'helper.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('abd'),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: <Widget>[
          Positioned(
            top: 34,
            child: Container(
              width: 84,
              height: 30,
              child: Text(
                "register",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ),
          Positioned(
            
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 50,
                      color: Theme.of(context).hintColor.withOpacity(0.2),
                    )
                  ]),
              margin: EdgeInsets.symmetric(
                horizontal: 200,
              ),
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 27),
              
              child: Form(
                key: Key('abcd'),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.text,
                      onSaved: (input) => input,
                      decoration: InputDecoration(
                        labelText: "full name",
                        labelStyle:
                            TextStyle(color: Theme.of(context).accentColor),
                        contentPadding: EdgeInsets.all(12),
                        hintText: "S.of(context).john_doe",
                        hintStyle: TextStyle(
                            color:
                                Theme.of(context).focusColor.withOpacity(0.7)),
                        prefixIcon: Icon(Icons.person_outline,
                            color: Theme.of(context).accentColor),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context)
                                    .focusColor
                                    .withOpacity(0.2))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context)
                                    .focusColor
                                    .withOpacity(0.5))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context)
                                    .focusColor
                                    .withOpacity(0.2))),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (input) => input,
                      decoration: InputDecoration(
                        labelText: "email",
                        labelStyle:
                            TextStyle(color: Theme.of(context).accentColor),
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'johndoe@gmail.com',
                        hintStyle: TextStyle(
                            color:
                                Theme.of(context).focusColor.withOpacity(0.7)),
                        prefixIcon: Icon(Icons.alternate_email,
                            color: Theme.of(context).accentColor),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context)
                                    .focusColor
                                    .withOpacity(0.2))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context)
                                    .focusColor
                                    .withOpacity(0.5))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context)
                                    .focusColor
                                    .withOpacity(0.2))),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      onSaved: (input) => input,
                      decoration: InputDecoration(
                        labelText: "pasword",
                        labelStyle:
                            TextStyle(color: Theme.of(context).accentColor),
                        contentPadding: EdgeInsets.all(12),
                        hintText: '••••••••••••',
                        hintStyle: TextStyle(
                            color:
                                Theme.of(context).focusColor.withOpacity(0.7)),
                        prefixIcon: Icon(Icons.lock_outline,
                            color: Theme.of(context).accentColor),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context)
                                    .focusColor
                                    .withOpacity(0.2))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context)
                                    .focusColor
                                    .withOpacity(0.5))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context)
                                    .focusColor
                                    .withOpacity(0.2))),
                      ),
                    ),
                    SizedBox(height: 30),
                    OutlinedButton(
                      child: Text(
                        "Register",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
                      },
                    ),
                    SizedBox(height: 25),

                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              textColor: Theme.of(context).hintColor,
              child: Text("Back to login page"),
            ),
          )
        ],
      ),
    );
  }
}
