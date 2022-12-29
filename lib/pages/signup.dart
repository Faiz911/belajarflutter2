import 'package:flutter/material.dart';

import '../helper/my_color.dart';
import '../widgets/textLabel.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
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
                  "Daftar",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                TextLabel(
                  text: 'Daftar Pengguna Baru',
                ),
                SizedBox(
                  height: 70,
                ),
                TextLabel(
                  text: 'Nama Lengkap',
                ),
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
                        "assets/i_profile.png",
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: TextFormField(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        decoration:
                            InputDecoration.collapsed(hintText: 'Nama Lengkap'),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextLabel(
                  text: 'Username',
                ),
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
                        "assets/i_home.png",
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: TextFormField(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        decoration:
                            InputDecoration.collapsed(hintText: 'Username'),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextLabel(
                  text: 'Alamat Email',
                ),
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
                TextLabel(
                  text: 'Password',
                ),
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
                    onPressed: () {},
                    child: Text(
                      'Daftar',
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
                    Text("Sudah punya akun?"),
                    GestureDetector(
                      onTap: () => {Navigator.pushNamed(context, '/login')},
                      child: Text(
                        "Masuk.",
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
