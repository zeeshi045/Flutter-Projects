import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:guessnumber_final/s1.dart';
import 'package:guessnumber_final/signup.dart';
import 'user.dart';
import 'forget.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  bool shouldIRotate = false;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Builder(
        builder: (context) {
          return SingleChildScrollView(
            child: Stack(children: [
              Form(
                key:_formKey,
                child: Container(
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
                              image: AssetImage("images/loginui.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsets.fromLTRB(10, 0, 10,100),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email_outlined,color: Colors.deepPurpleAccent.shade100,),
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                      color: Colors.black54, fontSize: 16),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.all(10),
                                  border: new OutlineInputBorder(
                                    borderRadius:
                                    new BorderRadius.circular(20.0),
                                    borderSide:
                                    new BorderSide(color: Colors.blue),
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
                              TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock_outline,color: Colors.deepPurpleAccent.shade100,),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Colors.black54, fontSize: 16),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.all(10),
                                  border: new OutlineInputBorder(
                                    borderRadius:
                                    new BorderRadius.circular(20.0),
                                    borderSide: new BorderSide(),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                obscureText: true,
                                controller: _password,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter a password';
                                  }
                                  if (value.length < 8) {
                                    return 'Password must be at least 8 characters';
                                  }
                                  if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$')
                                      .hasMatch(value)) {
                                    return 'password must contain at least one letter, one number and must be 8 characters long.';
                                  }
                                  return null;
                                },
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),

                              ),
                              SizedBox(
                                height: 10,
                              ),
                              forgetPassword(context),
                              TextButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.deepPurpleAccent,
                                  onPrimary: Colors.white,
                                ),
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(fontSize: 18),
                                ),
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {

                                    try {
                                      UserCredential userCredential = await FirebaseAuth
                                          .instance
                                          .signInWithEmailAndPassword(
                                        email: _email.text,
                                        password: _password.text,
                                      );
                                      if (userCredential != null) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => screen1()),
                                        );
                                      }
                                    } on FirebaseAuthException catch (e) {
                                      if (e.code == 'user-not-found') {
                                        final snackBar = SnackBar(
                                          backgroundColor: Colors.red,
                                          content: Text(
                                            e.toString(),
                                            style: TextStyle(
                                                color: Colors.white),
                                          ),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      } else if (e.code == 'wrong-password') {
                                        final snackBar = SnackBar(
                                          backgroundColor: Colors.red,
                                          content: Text(
                                            e.toString(),
                                            style: TextStyle(
                                                color: Colors.white),
                                          ),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      }
                                    }
                                  }

                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have an account ?",
                                    style: TextStyle(
                                        color: Colors.deepPurpleAccent, fontSize: 16),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => SignUp()),
                                      );
                                    },
                                    child: Text(
                                      " signUp now",
                                      style: TextStyle(
                                        color: Colors.deepPurpleAccent,
                                        fontSize: 16,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ]),
          );
        },
      ),
    );
  }
  Widget forgetPassword(BuildContext context)
  {
    return Container(width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child:
        Text("Forgot Password?",style: TextStyle(color: Colors.deepPurpleAccent),textAlign: TextAlign.right,),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> ResetPassword())),

      ),
    );
  }
}

