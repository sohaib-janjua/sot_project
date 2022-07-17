import 'package:flutter/material.dart';
import 'package:sot_project/contacts_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                  "Sign Up",
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
                    hintText: "Full Name",
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Email ",
                  ),
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
                      Route r = MaterialPageRoute(builder: (x) {
                        return const ContactsPage();
                      });
                      Navigator.push(context, r);
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        primary: const Color(0xFF976FD8)),
                    child: const Text(
                      'SignUp',
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
                  children: const [
                    Text("Have an account"),
                    Text(
                      "Login?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 39,
                ),
                TextButton(
                  onPressed: () {
                    print("Cancel button is here");
                  },
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
