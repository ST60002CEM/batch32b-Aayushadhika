import 'package:flutter/material.dart';
import 'package:sagun/Screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailFieldController = TextEditingController();
  TextEditingController passwordFieldController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/same.jpg'),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 219, 203, 61)),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Welcome To Sagun",
                                style: TextStyle(
                                  fontSize: 32,
                                  fontFamily: "Epilogue",
                                  color: Color.fromARGB(255, 0, 14, 4),
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.3,
                                ),
                              ),
                            ),
                            TextFormField(
                              validator: (value) {},
                              decoration: InputDecoration(hintText: "Email"),
                            ),
                            TextFormField(
                              decoration: InputDecoration(hintText: "password"),
                              validator: (value) {},
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => HomeScreen()));
                              },
                              child: Text("LogIn"),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text("Forgot Password?")),
                            Row(
                              children: [
                                Text("Don't have an account?"),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("Sign Up"),
                                )
                              ],
                            ),
                            ElevatedButton.icon(
                              style: ButtonStyle(),
                              onPressed: () {},
                              icon: Icon(Icons.gpp_good_rounded),
                              label: Text("Sign In with Google"),
                            )
                            // Add other login elements here
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
