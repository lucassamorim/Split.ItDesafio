import 'dart:ffi';

import 'package:app_divisao/modules/home/widgets/loading_widget.dart';
import 'package:flutter/material.dart';

import 'package:app_divisao/modules/home/widgets/icon_dolar.dart';
import 'package:app_divisao/shared/models/event_model.dart';
import 'package:app_divisao/theme/app_theme.dart';

class EventButtonWidget extends StatelessWidget {
  final EventModel model;
  final bool isLoading;
  const EventButtonWidget({
    Key? key,
    required this.model,
    this.isLoading = false,
  }) : super(key: key);

  IconDolarType get type =>
      model.value! >= 0 ? IconDolarType.receive : IconDolarType.send;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Container(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 0, bottom: 16),
        child: Row(
          children: [
            LoadingWidget(size: Size(48, 48)),
            SizedBox(width: 16),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 10, top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LoadingWidget(size: Size(221, 19)),
                          SizedBox(height: 10),
                          LoadingWidget(size: Size(52, 18)),
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          LoadingWidget(size: Size(61, 17)),
                          SizedBox(height: 10),
                          LoadingWidget(size: Size(44, 18)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 0, bottom: 16),
        child: Row(
          children: [
            IconDolarWidget(type: type),
            SizedBox(width: 16),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 10, top: 12),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Color(0xFFCCCCCC),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            model.title!,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                            style: AppTheme.textStyles.eventTileTitle,
                          ),
                          SizedBox(height: 10),
                          Text(
                            model.created.toString(),
                            style: AppTheme.textStyles.eventTileSubtitle,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "R\$ ${model.value}",
                            style: AppTheme.textStyles.eventTitleMoney,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "${model.people} amigo${model.people == 1 ? '' : 's'}",
                            style: AppTheme.textStyles.eventTilePeople,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }
  }
}
