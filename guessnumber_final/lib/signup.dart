import 'package:flutter/material.dart';

import 'login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();


  String email = "";
  String name = "";
  String passWord = "";

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
                        image: AssetImage("images/sign.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * .1,
                // ),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 100),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person_add,color: Colors.deepPurpleAccent.shade100,),
                              hintText: "Name",
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
                            controller: _name,
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
                              prefixIcon: Icon(Icons.lock_outline_rounded,color: Colors.deepPurpleAccent.shade100,),
                              hintText: "Password",
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
                            obscureText: true,
                            controller: _password,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),

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
                          TextButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurpleAccent,
                              onPrimary: Colors.white,
                            ),
                            child: Text(
                              "Sign Up",
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
                                "Already have an account ?",
                                style: TextStyle(
                                    color: Colors.deepPurpleAccent, fontSize: 16),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LogIn()),
                                  );
                                },
                                child: Text(
                                  " signIn now",
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
          );
        }),
      ),
    );
  }
}
