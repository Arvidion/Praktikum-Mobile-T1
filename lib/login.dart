import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/styles.dart';
import 'package:flutter_application_2/widget/cust_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    void _login() {
      if (usernameController.text == 'admin' &&
          passwordController.text == '1234') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Username atau Password Salah')));
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 425,
              child: Image.asset('assets/images/logo.png'),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 24, right: 32, left: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomTextField(
                          controller: usernameController,
                          textInputType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          hint: 'Enter your username (admin)'),
                      SizedBox(
                        height: 16,
                      ),
                      CustomTextField(
                        controller: passwordController,
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        hint: 'Enter your password (1234)',
                        isSecure: true,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: _login,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.purple,
                          ),
                          child: Text(
                            'Login',
                            style: TextStyles.title.copyWith(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      )  
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
