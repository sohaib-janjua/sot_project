import 'package:flutter/material.dart';
import 'package:sot_project/signup_page.dart';


class SignInPage extends StatelessWidget {
  const SignInPage({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF976FD8)),
                    ),
                    const SizedBox(
                        height: 80,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter Your Username",
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Your Password",
                            suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          ),
                          obscureText: true,
                      ),
                      const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 45,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              print("Here is my function on login button");
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              primary: const Color(0xFF976FD8),
                              ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: 30,
                          ),
                          const Text("Forget Password?"),
                            const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Don't have an account?"),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                            return const SignUpPage();
                                          }));
                                      },
                                      child: const Text(
                                        "Sign Up",
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              TextButton(
                                onPressed: () =>print('Cancel Called'),
                                child: const Text("Cancel"),
                   ),
                ],
              ),
          ),
        ),
      ),
    );
  }
}