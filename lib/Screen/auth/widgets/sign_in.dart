import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/auth/widgets/Provider_button.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'decoration_functions.dart';
import 'sign_in_up_bar.dart';
import '../../../config/palette.dart';
import 'tittle.dart';

class SignIn extends StatelessWidget {
  const SignIn({
    Key key,
    @required this.onRegisterClicked,
  }) : super(key: key);

  final VoidCallback onRegisterClicked;

  @override
  Widget build(BuildContext context) {
    final isSubmitting = context.isSubmitting();
    return SignInForm(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.centerLeft,
                child: LoginTitle(
                  title: 'Welcome\nBack',
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: EmailTextFormField(
                      decoration: signInInputDecoration(hintText: 'Email'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: PasswordTextFormField(
                      decoration: signInInputDecoration(hintText: 'Password'),
                    ),
                  ),
                  SignInBar(
                    label: 'Sign in',
                    isLoading: isSubmitting,
                    onPressed: () {
                      context.signInWithEmailAndPassword();
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () {
                        onRegisterClicked?.call();
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          color: Palette.darkBlue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      const Text(
                        "or sign in with",
                        style: TextStyle(color: Colors.black54),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Providerbutton(
                            context: context,
                            signintype: "google",
                          ),
                          Providerbutton(
                            context: context,
                            signintype: "facebook",
                          ),
                          Providerbutton(
                            context: context,
                            signintype: "apple",
                          ),
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                        splashColor: Colors.white,
                        onTap: () {
                          onRegisterClicked?.call();
                        },
                        child: RichText(
                            text: const TextSpan(
                                text: "Dont have an account? ",
                                style: TextStyle(color: Colors.black54),
                                children: <TextSpan>[
                              TextSpan(
                                text: "SIGN UP",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ])),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
