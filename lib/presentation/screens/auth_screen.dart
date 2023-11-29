

import 'package:amazone_clone/constants/global_variabels.dart';
import 'package:amazone_clone/features/services/common_widget/common_textfiled.dart';
import 'package:flutter/material.dart';

import '../../features/services/common_widget/custom_button.dart';

enum Auth{
  singin,
  singup
}

class AuthScreen extends StatefulWidget {
  static const routeName = "/auth";
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.singup;
  final _signupFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();


  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Welcome",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22
              ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text("Create Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),

                ),
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.singup,
                  groupValue: _auth,
                  onChanged: (Auth? value) {

                    setState(() {
                      _auth = value!;
                    });
                  },
                ),
              ),
              if(_auth==Auth.singup)
                Form(
                  key: _signupFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextFiled(controller: _nameController,hintText: "Name",),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFiled(controller: _emailController,hintText: "Email",),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFiled(controller: _passwordController,hintText: "Password",),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(onTap: (){

                      }, buttonText: 'SingUp',
                      )
                    ],
                  ),
                ),
              
              ListTile(
                title: const Text("Sign In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),

                ),
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.singin,
                  groupValue: _auth,
                  onChanged: (Auth? value) {

                    setState(() {
                      _auth = value!;
                    });
                  },
                ),
              ),
              if(_auth==Auth.singin)
                Form(
                  key: _signInFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      CustomTextFiled(controller: _emailController,hintText: "Email",),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFiled(controller: _passwordController,hintText: "Password",),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(onTap: (){

                      }, buttonText: 'SingIn',
                      )
                    ],
                  ),
                ),


            ],
          ),
        ),
      ) ,
    );
  }
}
