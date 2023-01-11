import 'package:flutter/material.dart';
import 'package:guessnumber_final/signup.dart';

import 'forget.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
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
              Container(
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
                        child: Form(
                          key: _formKey,
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
                                keyboardType: TextInputType.emailAddress,
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
                                onPressed: () {


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
                    ),
                  ],
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

