import 'package:app_divisao/modules/home/widgets/add_button.dart';
import 'package:app_divisao/modules/home/widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:app_divisao/modules/login/models/user_model.dart';
import 'package:app_divisao/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  final VoidCallback onTapAddButton;
  AppBarWidget({required this.user, required this.onTapAddButton})
      : super(
          preferredSize: Size.fromHeight(304),
          child: Container(
            decoration: BoxDecoration(
              color: AppTheme.colors.backgroundSecondary,
            ),
            child: SafeArea(
              child: Container(
                height: 304,
                color: AppTheme.colors.backgroundPrimary,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 202,
                              color: AppTheme.colors.backgroundSecondary,
                            ),
                            Container(
                              height: 102,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 20, right: 20),
                          child: Column(
                            children: [
                              Container(
                                color: AppTheme.colors.backgroundSecondary,
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
                                    AddButtonWidget(
                                      onTap: onTapAddButton,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                              BottomAppBarWidget()
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
