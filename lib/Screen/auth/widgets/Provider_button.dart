import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class Providerbutton extends StatefulWidget {
  final BuildContext context;
  final String signintype;

  const Providerbutton({Key key, this.context, this.signintype})
      : super(key: key);
  @override
  _ProviderbuttonState createState() => _ProviderbuttonState();
}

class _ProviderbuttonState extends State<Providerbutton> {
  @override
  Widget build(BuildContext context) {
    switch (widget.signintype) {
      case "google":
        return InkWell(
          onTap: () => context.signInWithGoogle(),
          child: Container(
            padding: const EdgeInsets.all(12.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black26,
              ),
            ),
            child: LitAuthIcon.google(
              size: const Size(30, 30),
            ),
          ),
        );

        break;
      case "apple":
        return InkWell(
          onTap: () => context.signInWithApple(),
          child: Container(
            padding: const EdgeInsets.all(12.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black26,
              ),
            ),
            child: Transform.translate(
              offset: Offset(-1, 0),
              child: LitAuthIcon.appleBlack(
                size: const Size(30, 30),
              ),
            ),
          ),
        );

        break;
      case "github":
        return InkWell(
          onTap: () => context.signInWithGithub(),
          child: Container(
            padding: const EdgeInsets.all(12.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black26,
              ),
            ),
            child: Transform.scale(
              scale: 1.2,
              child: LitAuthIcon.github(
                size: const Size(30, 30),
              ),
            ),
          ),
        );

        break;
      default:
        return const Text("error");
    }
  }
}
