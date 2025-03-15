import 'package:chat_app/Pages/Auth/Widgets/LoginForm.dart';
import 'package:chat_app/Pages/Auth/Widgets/SignupForm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthPageBody extends StatefulWidget {
  const AuthPageBody({super.key});

  @override
  State<AuthPageBody> createState() => _AuthPageBodyState();
}

class _AuthPageBodyState extends State<AuthPageBody> {
  @override
  Widget build(BuildContext context) {
    RxBool isLogin = false.obs;
    return Container(
      // height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),

      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            isLogin.value = true;
                          },
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width / 2.7,
                            child: Column(
                              children: [
                                Text(
                                  "Login",
                                  style:
                                      isLogin.value
                                          ? Theme.of(
                                            context,
                                          ).textTheme.headlineSmall
                                          : Theme.of(
                                            context,
                                          ).textTheme.labelLarge,
                                ),
                                SizedBox(height: 5),
                                AnimatedContainer(
                                  duration: Duration(microseconds: 500),
                                  width: isLogin.value ? 100 : 0,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            isLogin.value = false;
                          },
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width / 2.7,
                            child: Column(
                              children: [
                                Text(
                                  "Sign Up",
                                  style:
                                      isLogin.value
                                          ? Theme.of(
                                            context,
                                          ).textTheme.labelLarge
                                          : Theme.of(
                                            context,
                                          ).textTheme.headlineSmall,
                                ),
                                SizedBox(height: 5),
                                AnimatedContainer(
                                  duration: Duration(microseconds: 500),
                                  width: isLogin.value ? 0 : 100,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Obx(
                    () =>
                        isLogin.value ? const LoginForm() : const SignupForm(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
