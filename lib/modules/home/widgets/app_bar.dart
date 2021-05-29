import 'package:app_divisao/modules/login/models/user_model.dart';
import 'package:app_divisao/modules/login/models/user_model.dart';
import 'package:app_divisao/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'calculation_button.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  AppBarWidget({required this.user})
      : super(
          preferredSize: Size.fromHeight(303),
          child: Container(
            decoration: BoxDecoration(
              color: AppTheme.colors.backgroundSecondary,
            ),
            child: SafeArea(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          ClipRRect(
                            child: Image.network(
                              user.photoUrl!,
                              width: 63,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          SizedBox(width: 17),
                          Expanded(
                            child: Text(
                              user.name!,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                              style: AppTheme.textStyles.titleAppBar,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.fromBorderSide(
                                BorderSide(
                                    width: 0.7, color: Color(0xFFF4F4F4)),
                              ),
                            ),
                            width: 48,
                            height: 56,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 100,
                              color: AppTheme.colors.backgroundSecondary,
                            ),
                            Container(
                              height: 120,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 20, right: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: CalculationButtonWidget(
                                      image:
                                          "assets/images/dollar-send-left.png",
                                      price: "124,00",
                                      text: "A receber",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: CalculationButtonWidget(
                                      image:
                                          "assets/images/dollar-send-right.png",
                                      price: "48,00",
                                      text: "A pagar",
                                      receive: false,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
}
