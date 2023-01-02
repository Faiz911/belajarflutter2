import 'package:flutter/material.dart';
import 'package:pertemuan2/helper/my_color.dart';
import 'package:pertemuan2/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                Text(
                  "Silahkan login untuk melanjutkan",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 70,
                ),
                Text("Alamat Email"),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200]),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Email.png",
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: TextFormField(
                        controller: emailController,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        decoration: InputDecoration.collapsed(
                            hintText: 'Masukkan email anda'),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Password"),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200]),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/pass.png",
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        decoration: InputDecoration.collapsed(
                            hintText: 'Masukkan password'),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (authProvider.login(
                          email: emailController.text,
                          password: passwordController.text)) {
                        Navigator.pushNamed(context, '/main_home');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content:
                                const Text('Username atau Password Salah!')));
                      }
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Belum punya akun?"),
                    GestureDetector(
                      onTap: () => {Navigator.pushNamed(context, '/signUp')},
                      child: Text(
                        "Daftar",
                        style: TextStyle(color: MyColor.primaryColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
