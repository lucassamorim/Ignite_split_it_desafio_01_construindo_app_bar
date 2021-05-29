import '../../modules/home/widgets/app_bar.dart';
import '../../modules/home/widgets/event_button.dart';
import '../../modules/login/models/user_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBarWidget(
        user: user,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              EventButtonWidget(
                date: "01 março",
                title: "Churrasco",
                frends: 1,
                price: 128.00,
              ),
              EventButtonWidget(
                date: "01 março",
                title: "Almoço",
                frends: 1,
                price: 32.00,
                receive: false,
              ),
              EventButtonWidget(
                date: "01 março",
                title: "Stream Game",
                frends: 1,
                price: 122.00,
              ),
              EventButtonWidget(
                date: "01 março",
                title: "Trilheiros",
                frends: 1,
                price: 16.00,
                receive: false,
              ),
              EventButtonWidget(
                date: "01 março",
                title: "Churrasco",
                frends: 1,
                price: 128.00,
              ),
              EventButtonWidget(
                date: "01 março",
                title: "Almoço",
                frends: 1,
                price: 32.00,
                receive: false,
              ),
              EventButtonWidget(
                date: "01 março",
                title: "Stream Game",
                frends: 1,
                price: 122.00,
              ),
              EventButtonWidget(
                date: "01 março",
                title: "Trilheiros",
                frends: 1,
                price: 16.00,
                receive: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
