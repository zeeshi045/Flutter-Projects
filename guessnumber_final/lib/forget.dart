
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController _email = new TextEditingController();

  String email = "";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Builder(builder: (context) {
          return Container(
            height: height,
            width: width,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  width: 500,
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/reset.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * .1,
                // ),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10,100),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined,color: Colors.deepPurpleAccent.shade100,),
                              hintText: "Email",
                              hintStyle:
                              TextStyle(color: Colors.black54, fontSize: 16),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.all(10),
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(20.0),
                                borderSide: new BorderSide(),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            controller: _email,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter an email';
                              }
                              if (!EmailValidator.validate(value)) {
                                return 'Enter a Correct email address';
                              }
                              return null;
                            },
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),


                          ),
                          SizedBox(
                            height: 15,
                          ),

                          // TextFormField(
                          //   decoration: InputDecoration(
                          //     hintText: "Password",
                          //     hintStyle:
                          //     TextStyle(color: Colors.black, fontSize: 16),
                          //     filled: true,
                          //     fillColor: Colors.white,
                          //     contentPadding: EdgeInsets.all(10),
                          //     border: new OutlineInputBorder(
                          //       borderRadius: new BorderRadius.circular(10.0),
                          //       borderSide: new BorderSide(),
                          //     ),
                          //     focusedBorder: OutlineInputBorder(
                          //       borderSide: BorderSide(color: Colors.blue),
                          //       borderRadius: BorderRadius.circular(10.0),
                          //     ),
                          //   ),
                          //   obscureText: true,
                          //   controller: _password,
                          //   keyboardType: TextInputType.emailAddress,
                          //   style: TextStyle(
                          //     color: Colors.black,
                          //     fontSize: 16,
                          //   ),
                          //   validator: (value) {
                          //     if (_password.text.length < 6) {
                          //       return 'Password length must be greater than 6 characters';
                          //     }
                          //     return null;
                          //   },
                          // ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurpleAccent,
                              onPrimary: Colors.white,
                            ),
                            child: Text(
                              "Reset",
                              style: TextStyle(fontSize: 18),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                if (_formKey.currentState!.validate()) {
                                  FirebaseAuth.instance.sendPasswordResetEmail(
                                      email: _email.text).then((value) =>
                                      Navigator.of(context).pop());
                                  // Code to execute when the button is pressed
                                }

          }
                            },

                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
