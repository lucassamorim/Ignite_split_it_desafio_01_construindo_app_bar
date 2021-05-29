import 'login_controller.dart';
import 'login_state.dart';
import 'widgets/login_service.dart';
import 'widgets/social_button.dart';
import '../../theme/app_theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController(
        onUpdate: () {
          if (controller.state is LoginStateSuccess) {
            final user = (controller.state as LoginStateSuccess).user;
            Navigator.pushReplacementNamed(context, "/home", arguments: user);
          } else {
            setState(() {});
          }
        },
        service: LoginServiceImpl());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Container(
                  width: 236,
                  child: Text(
                    "Divida suas contas com seus amigos",
                    style: AppTheme.textStyles.title,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/emoji.png',
                    width: 36,
                    height: 36,
                  ),
                  title: Text("Faça seu login com uma das contas abaixo",
                      style: AppTheme.textStyles.buttom),
                ),
              ),
              SizedBox(height: 32),
              if (controller.state is LoginStateLoading) ...[
                CircularProgressIndicator(),
              ] else if (controller.state is LoginStateFailure) ...[
                Text((controller.state as LoginStateFailure).message),
              ] else
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: SocialButtonWidget(
                    imagePath: 'assets/images/google-icon.png',
                    label: 'Entrar com Google',
                    onTap: () {
                      controller.googleSignIn();
                    },
                  ),
                ),
              SizedBox(height: 12),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 32),
              //   child: SocialButtonWidget(
              //     imagePath: 'assets/images/apple-icon.png',
              //     label: 'Entrar com Apple',
              //     onTap: () async {
              //       try {
              //         final credential =
              //             await SignInWithApple.getAppleIDCredential(
              //           scopes: [
              //             AppleIDAuthorizationScopes.email,
              //             AppleIDAuthorizationScopes.fullName,
              //           ],
              //         );
              //         print(credential);
              //       } catch (e) {
              //         print(e);
              //       }
              //     },
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}
