import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:initial_code/core/controller/test_view_controller.dart';
import 'core/class/handling_view_request.dart';
import 'core/class/status_request.dart';
import 'core/constant/color.dart';

// ******************* Customize AppBar with SafeArea

//  height: MediaQuery.of(context).size.height - asd asd
//          appBarHeight -
//          MediaQuery.of(context).padding.top +
//          MediaQuery.of(context).viewPadding.top,

// ******************* Customize AppBar without SafeArea

//  height: MediaQuery.of(context).size.height -
//          appBarHeight -
//          MediaQuery.of(context).padding.top,

// ******************* Appbar Only

//  height: MediaQuery.of(context).size.height -
//          appBar.preferredSize.height -
//          MediaQuery.of(context).padding.top,

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TestViewController());
    final double appBarHeight = MediaQuery.of(context).size.height * .17;
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: const Drawer(),
      body: Column(children: [
        Container(
          decoration: const BoxDecoration(
              color: AppColor.skyBlue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          height: appBarHeight,
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
              child: Stack(children: [
            IconButton(
                onPressed: () {
                  controller.scaffoldKey.currentState!.openDrawer();
                },
                icon: const FaIcon(
                  FontAwesomeIcons.bars,
                  color: Colors.white,
                )),
            Positioned(
              right: 0,
              top: 0,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.arrowRightFromBracket,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            const Positioned(
                bottom: 10,
                left: 12,
                child: Text("Welcome, Admin",
                    style: TextStyle(
                        fontFamily: "Manrope",
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600)))
          ])),
        ),
        RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 2));
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: SizedBox(
                height: MediaQuery.of(context).size.height -
                    appBarHeight -
                    MediaQuery.of(context).padding.top +
                    MediaQuery.of(context).viewPadding.top,
                child: HandlingViewRequest(
                    statusRequest: StatusRequest.serverfailure,
                    widget: RefreshIndicator(
                      onRefresh: () async {
                        await Future.delayed(const Duration(seconds: 2));
                      },
                      child: ListView.builder(
                          itemCount: 20,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return const Card(
                              child: ListTile(title: Text("Test")),
                            );
                          }),
                    ))),
          ),
        ),
      ]),
    );
  }
}
