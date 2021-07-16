import 'package:app_divisao/modules/create_split/create_split_controller.dart';
import 'package:flutter/material.dart';

import 'package:app_divisao/theme/app_theme.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CreateSplitAppBar extends PreferredSize {
  final VoidCallback onTapBack;
  final CreateSplitController controller;
  final int size;
  CreateSplitAppBar({
    required this.onTapBack,
    required this.controller,
    required this.size,
  }) : super(
          preferredSize: Size.fromHeight(72),
          child: SafeArea(
            top: true,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: AppTheme.colors.backButton,
                    onPressed: onTapBack,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Observer(
                      builder: (_) => Text.rich(
                        TextSpan(
                          text: "0${controller.currentPage + 1}",
                          style: AppTheme.textStyles.stepperIndicatorPrimary,
                          children: [
                            TextSpan(
                                text: "- 0${size}",
                                style: AppTheme
                                    .textStyles.stepperIndicatorSecondary)
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        );
}
