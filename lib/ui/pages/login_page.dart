import 'package:flutter/material.dart';
import 'package:wms_mobile/shared/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    Widget emailInput() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.email_rounded,
              color: kPurpleColor,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kPurpleColor),
            ),
            labelText: 'ID ',
            labelStyle: TextStyle(
              color: kPurpleColor,
            ),
          ),
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.remove_red_eye, color: kPurpleColor),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kPurpleColor),
            ),
            labelText: 'Password ',
            // hintText: "type your password",
            labelStyle: TextStyle(
              color: kPurpleColor,
            ),
          ),
          maxLength: 7,
        ),
      );
    }

    Widget buttonInput() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 48, vertical: 30),
        width: double.infinity,
        height: 48,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          },
          style: TextButton.styleFrom(
              backgroundColor: kPurpleColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
          child: Text(
            'SIGN IN',
            style: whiteTextStyle.copyWith(fontSize: 15, fontWeight: medium),
          ),
        ),
      );
    }

    Widget logoSection() {
      return Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 80),
            width: 264,
            height: 121,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/wms-main.png'))),
          ),
        ],
      );
    }

    Widget inputSection() {
      return Container(
        width: 200,
        padding: EdgeInsets.only(top: 20),
        margin: EdgeInsets.only(top: 20, right: 45, left: 45),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Colors.black.withOpacity(0.2)
          )],
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [emailInput(), passwordInput(), buttonInput()],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            logoSection(),
            inputSection(),
          ],
        ),
      ),
    );
  }
}
