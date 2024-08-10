import 'package:flutter/material.dart';
import 'package:habit_tracker/components/button_component.dart';
import 'package:habit_tracker/components/image_button_component.dart';
import 'package:habit_tracker/components/text_field_component.dart';

class AuthPage extends StatelessWidget {
  // image assets
  final googleLogo = "assets/images/google_logo.png";
  //text controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign in button function
  void signInUser() {
    print("user signed in!");
  }

  AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Image.asset("assets/images/logo.png"),
              // welcome back
              Text(
                "Welcome back",
                style:
                    TextStyle(color: Theme.of(context).hintColor, fontSize: 16),
              ),
              // username
              TextFieldComponent(
                controller: usernameController,
                hintText: "Username",
                obscureText: false,
              ),
              // password
              TextFieldComponent(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true),
              // forgot password
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withAlpha(150)),
                    ),
                  ],
                ),
              ),
              // sign in button
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ButtonComponent(
                  onPressed: signInUser,
                ),
              ),

              // DIVIDER
              Container(
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Theme.of(context).colorScheme.secondaryFixedDim,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Or sign in with"),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Theme.of(context).colorScheme.secondaryFixedDim,
                      ),
                    ),
                  ],
                ),
              ),
              // sign in with google button
              ImageButtonComponent(imagePath: googleLogo),
              // if not a member, Register button
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member? ",
                      style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withAlpha(150)),
                    ),
                    Text(
                      "Register Now",
                      style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withAlpha(220),
                          fontWeight: FontWeight.bold),
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
