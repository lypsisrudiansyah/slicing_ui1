// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:slicing1/freelance_slicing_login_list_1/list_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // ignore: prefer_final_fields
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[850],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Image.asset(
                    "assets/diamond.png",
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                // color: Colors.red,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Title",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Subtitle",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      initialValue: null,
                      decoration: InputDecoration(
                        filled: true,
                        focusColor: Colors.white,
                        labelText: "Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      initialValue: null,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        filled: true,
                        focusColor: Colors.white,
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: const Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff1fdbb9),
                        ),
                        onPressed: () {
                          // Navi
                          // navpush to ListScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ListScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
