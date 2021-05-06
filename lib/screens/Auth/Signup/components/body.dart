import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:fr_parel/screens/Auth/Login/login_screen.dart';
import 'package:fr_parel/screens/Auth/Signup/components/social_icon.dart';
import 'package:fr_parel/widgets/login_components/already_have_an_account_acheck.dart';
import 'package:fr_parel/widgets/login_components/rounded_button.dart';
import 'package:fr_parel/widgets/login_components/rounded_input_field.dart';
import 'package:fr_parel/widgets/login_components/rounded_password_field.dart';

import 'background.dart';
import 'or_divider.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class Body extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "INSCRIPTION",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Votre Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "S'INSCRIRE",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
