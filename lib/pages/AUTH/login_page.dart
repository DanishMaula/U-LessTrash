import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:u_less_trash/utils/text_style.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/logreg_bg.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
          child: Column(
            children: [
              Center(
                child: Text(
                  'U-LessTrash',
                  style: titlelogReg,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Login', style: sublogReg),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: textFieldLogReg,
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff2D8D7B),
                    ),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff2D8D7B),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: textFieldLogReg,
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff2D8D7B),
                    ),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff2D8D7B),
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Forgot Password',
                    style: forgotPassword,
                  )),
              const SizedBox(height: 15),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: const Color(0xff2D8D7B),
                  minWidth: 168,
                  height: 35,
                  onPressed: () {
                    Navigator.pushNamed(context, '/navBar');
                  },
                  child: Text(
                    'Login',
                    style: buttonLogin,
                  )),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account yet?',
                    style: dontHA,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text('Register', style: textRegister),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Expanded(
                      child: Divider(
                    color: Color(0xff263238),
                    thickness: 1,
                  )),
                  Padding(
                    padding: const EdgeInsets.only(left: 27, right: 27),
                    child: Text(
                      'Or',
                      style: forgotPassword,
                    ),
                  ),
                  const Expanded(
                      child: Divider(
                    thickness: 1,
                    color: Color(0xff263238),
                  )),
                ],
              ),
              const SizedBox(height: 15),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.white,
                  minWidth: MediaQuery.of(context).size.width,
                  height: 40,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo_google.png',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Login with Google',
                        style: loginGoogle,
                      ),
                    ],
                  )),
              const SizedBox(height: 15),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: const Color(0xff3B5998),
                  minWidth: MediaQuery.of(context).size.width,
                  height: 40,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo_facebook.png',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Login with Facebook',
                        style: loginFacebook,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
