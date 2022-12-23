import 'package:flutter/material.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              // height: MediaQuery.of(context).size.height / 3.5,
              child: Image.asset('image/LogoApp.png', width: 300, height: 300),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(30),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 10),
                        Container(
                          child: TextFormField(
                            controller: _email,
                            validator: (value){
                              if (value == null || value.isEmpty)
                                return "Vui lòng nhập email";
                              return null;
                            },
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),


                        const SizedBox(height: 10),
                        Container(
                          child: TextFormField(
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            controller: _password,
                            validator: (value){
                              if (value == null || value.isEmpty)
                                return "Vui lòng nhập mật khẩu";
                              return null;
                            },
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          child: TextFormField(
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            controller: _confirmPassword,
                            validator: (value){
                              if (value == null || value.isEmpty)
                                return "Vui lòng nhập lại mật khẩu";
                              return null;
                            },
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          child: TextFormField(
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            controller: _userName,
                            validator: (value){
                              if (value == null || value.isEmpty)
                                return "Vui lòng nhập tên tài khoản";
                              return null;
                            },
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              hintText: 'User Name',
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 10,0,0),
                            child: Align (
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        "By Signing up, you are agree to out",
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    ),
                                    TextButton  (
                                        child: Text("Terms & Conditions",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: const Color.fromARGB(255, 244, 76, 15),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: () {}
                                    ),
                                  ],
                                ),

                            )
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 0),
                            child: Align (
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("and",
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  TextButton  (
                                      child: Text("Privacy Plicy",
                                        style: TextStyle(
                                          color: const Color.fromARGB(255, 244, 76, 15),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                      onPressed: () {}
                                  ),
                                ],

                              ),

                            )
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 244, 76, 15),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 10,0,0),
                            child: Align (
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Joned us before?",
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  TextButton  (
                                      child: Text("Login",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: const Color.fromARGB(255, 244, 76, 15),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      onPressed: () {}
                                  ),
                                ],
                              ),

                            )
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}