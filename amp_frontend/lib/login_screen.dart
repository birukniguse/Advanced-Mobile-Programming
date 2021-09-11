import 'package:amp_frontend/show_booking.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                keyboardType: TextInputType.emailAddress,
                onSaved: (input) => input,
                decoration: InputDecoration(
                  labelText: "email",
                  labelStyle: TextStyle(color: Theme.of(context).accentColor),
                  contentPadding: EdgeInsets.all(12),
                  hintText: 'johndoe@gmail.com',
                  hintStyle: TextStyle(
                      color: Theme.of(context).focusColor.withOpacity(0.7)),
                  prefixIcon: Icon(Icons.alternate_email,
                      color: Theme.of(context).accentColor),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              Theme.of(context).focusColor.withOpacity(0.2))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              Theme.of(context).focusColor.withOpacity(0.5))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              Theme.of(context).focusColor.withOpacity(0.2))),
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                keyboardType: TextInputType.text,
                onSaved: (input) => input,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              Theme.of(context).focusColor.withOpacity(0.2))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              Theme.of(context).focusColor.withOpacity(0.5))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              Theme.of(context).focusColor.withOpacity(0.2))),
                  labelText: "password",
                  labelStyle: TextStyle(color: Theme.of(context).accentColor),
                  contentPadding: EdgeInsets.all(12),
                  hintText: '••••••••••••',
                  hintStyle: TextStyle(
                      color: Theme.of(context).focusColor.withOpacity(0.7)),
                ),
              ),
              SizedBox(height: 30),
              OutlinedButton(
                child: Text(
                  "login",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ShowBooking(
                        title: "Show your previous Bookings",
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
