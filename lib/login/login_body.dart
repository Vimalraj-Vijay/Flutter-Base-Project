import 'package:flutter/material.dart';
import 'package:flutter_project_base/extensions/validators.dart';
import 'package:flutter_project_base/home/home.dart';
import 'package:flutter_project_base/utils/color.dart';
import 'package:flutter_project_base/utils/navigator.dart';
import 'package:flutter_project_base/utils/strings.dart';
import 'package:flutter_project_base/utils/text_theme.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool _isLoginEnable = false;
  bool _isObscure = true;
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Container(
      color: appLoginBg,
      width: mediaQuery.size.width,
      height: mediaQuery.size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            appName,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              color: white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 15.0,
            ),
            child: Column(
              children: [
                TextFormField(
                  onChanged: (value) => isDataValid(),
                  controller: _emailTextController,
                  keyboardType: TextInputType.emailAddress,
                  style: textFieldStyle,
                  decoration: const InputDecoration(
                      fillColor: white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      hintText: hintEnterEmail),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextField(
                  onChanged: (value) => isDataValid(),
                  cursorColor: buttonBg,
                  obscureText: _isObscure,
                  enableSuggestions: false,
                  autocorrect: false,
                  keyboardType: TextInputType.visiblePassword,
                  style: textFieldStyle,
                  controller: _passwordTextController,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        color: bodyTextColor,
                      ),
                      fillColor: white,
                      filled: true,
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      hintText: hintEnterPassword),
                )
              ],
            ),
          ),
          Container(
            height: 70.0,
            padding: const EdgeInsets.all(15.0),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: !_isLoginEnable
                  ? null
                  : () => pushReplacementNamed(context, Home.id),
              child: Text(
                login,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              style: ButtonStyle(
                backgroundColor: _isLoginEnable
                    ? MaterialStateProperty.all(buttonBg)
                    : MaterialStateProperty.all(disableBg),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          GestureDetector(
            onTap: () {},
            child: const Text(
              forgotPassword,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          GestureDetector(
            onTap: () {},
            child: const Text(
              noAccountSignup,
              style: TextStyle(
                fontSize: 16,
                color: buttonBg,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }

  isDataValid() {
    var emailText = _emailTextController.text.toString();
    var passwordText = _passwordTextController.text.toString();
    setState(() {
      if (emailText.isEmpty ||
          !isValidEmail(emailText) ||
          passwordText.isEmpty ||
          passwordText.length < 6) {
        _isLoginEnable = false;
      } else {
        _isLoginEnable = true;
      }
    });
  }
}
