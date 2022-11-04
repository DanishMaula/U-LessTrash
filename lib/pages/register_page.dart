import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/utils.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/logreg_bg.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
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
              Text('Register', style: sublogReg),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Fullname',
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
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
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
              const SizedBox(height: 15),
             TextField(
                decoration: InputDecoration(
                  hintText: 'Phone Number',
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
              const SizedBox(height: 15),
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
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
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
              const SizedBox(height: 15),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: const Color(0xff2D8D7B),
                height: 35,
                minWidth: 168,
                onPressed: (){
                  Navigator.pushNamed(context, '/login');
                },
              child: Text('Register', style: buttonLogin,),),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Have an Account?',
                    style: dontHA,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    
                    },
                    child: Text('Sign In', style: textRegister),
                  ),
                ],
              ),
              
            
              
            ],
          ),
        ),
      ),
    );
  }
}
