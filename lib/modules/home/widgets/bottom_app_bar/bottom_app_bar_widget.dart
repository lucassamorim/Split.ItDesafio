import 'package:app_divisao/modules/home/widgets/app_bar/app_bar_controller.dart';
import 'package:app_divisao/modules/home/widgets/app_bar/app_bar_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../info_card.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({Key? key}) : super(key: key);

  @override
  _BottomAppBarWidgetState createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  final controller = AppBarController();
  @override
  void initState() {
    controller.getDashboard();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      switch (controller.state.runtimeType) {
        case AppBarStateLoading:
          {
            return Row(
              children: [
                Expanded(
                  child: InfoCardWidget(
                    value: 0,
                    isLoading: true,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: InfoCardWidget(
                    value: 0,
                    isLoading: true,
                  ),
                ),
              ],
            );
          }
        case AppBarStateSucesso:
          {
            final dashboard =
                (controller.state as AppBarStateSucesso).dashboard;
            return Row(
              children: [
                Expanded(
                  child: InfoCardWidget(
                    value: dashboard.receive,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: InfoCardWidget(
                    value: -dashboard.send,
                  ),
                ),
              ],
            );
          }
        case AppBarStateFalha:
          {
            final message = (controller.state as AppBarStateFalha).message;
            return Text(message);
          }
        default:
          {
            return Container();
          }
      }
    });

    // return Row(
    //   children: [
    //     Expanded(
    //       child: InfoCardWidget(
    //         value: 124,
    //       ),
    //     ),
    //     SizedBox(
    //       width: 15,
    //     ),
    //     Expanded(
    //       child: InfoCardWidget(
    //         value: -48,
    //       ),
    //     ),
    //   ],
    // );
  }
}
