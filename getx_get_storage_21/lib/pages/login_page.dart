import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_get_storage_21/controllers/auth_c.dart';
import 'package:getx_get_storage_21/controllers/text_c.dart';
import 'package:getx_get_storage_21/widgets/text_field.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  // const LoginPage({super.key});

  var textCont = Get.find<TextController>();
  var authCont = Get.find<AuthController>();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldCustom(
              icons: Icon(Icons.email),
              title: "Email",
              controller: textCont.emailC,
            ),
            const SizedBox(height: 20),
            Obx(
              () => TextField(
                controller: textCont.passwordC,
                obscureText: textCont.showPass.value,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                    onPressed: () {
                      textCont.showPass.toggle();
                    },
                    icon: Icon(Icons.remove_red_eye),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Obx(
              () => CheckboxListTile(
                value: textCont.rememberMe.value,
                onChanged: (value) {
                  textCont.rememberMe.toggle().value;
                },
                title: Text("Remember Me"),
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.white24,
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    authCont.login(
                        textCont.emailC.text, textCont.passwordC.text,textCont.rememberMe.value);
                  },
                  child: Center(
                    child: Text(
                      "Login",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
