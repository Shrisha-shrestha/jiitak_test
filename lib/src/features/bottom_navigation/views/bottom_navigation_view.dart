import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_test/src/config/themes/color_constants.dart';
import 'package:jiitak_test/src/config/themes/text_theme.dart';
import 'package:jiitak_test/src/features/bottom_navigation/views/bottom_navigation_view_model.dart';
import 'package:jiitak_test/src/features/home/views/home_view.dart';
import 'package:jiitak_test/src/shared/utils/resp_util.dart';
import 'package:jiitak_test/src/shared/widgets/custom_form_fields.dart';
import 'package:remixicon/remixicon.dart';

class BottomNavigationView extends StatelessWidget {
  BottomNavigationView({super.key});
  static const List pages = [
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
  ];
  final bottomNavigationController = Get.find<BottomNavigationController>();
  @override
  Widget build(BuildContext context) {
    final resp = RespUtil(context);

    return Scaffold(
      appBar: AppBar(
          title: const SearchTextField(hintText: '北海道, 札幌市'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Remix.equalizer_line, color: ColorConstants.gray400)),
            IconButton(onPressed: () {}, icon: const Icon(Remix.heart_line, color: ColorConstants.danger500)),
          ],
          actionsIconTheme: const IconThemeData(
            size: 30.0,
          ),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(35.0),
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  height: 35.0,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    stops: [0.0, 0.6],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                    colors: [Color.fromRGBO(250, 170, 20, 1.0), Color.fromRGBO(255, 215, 141, 1.0)],
                  )),
                  child: Center(
                      child: Text(
                    '2022年 5月 26日（木）',
                    style: resp.thm.textTheme.pMedium16Regular,
                  ))))),
      body: pages[bottomNavigationController.currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: const ShapeDecoration(
          shape: CircleBorder(),
          gradient: LinearGradient(
            stops: [0.0, 1.0],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            colors: [Color.fromRGBO(250, 170, 20, 1.0), Color.fromRGBO(255, 215, 141, 1.0)],
          ),
        ),
        child: FloatingActionButton(
          tooltip: '打刻する',
          foregroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          onPressed: () {},
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: const Icon(Icons.qr_code_scanner_outlined, color: Colors.white, size: 24),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: false,
        iconSize: 24,
        type: BottomNavigationBarType.fixed,
        onTap: (value) => bottomNavigationController.currentIndex = value,
        backgroundColor: Colors.white,
        currentIndex: bottomNavigationController.currentIndex,
        elevation: 16.0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: resp.thm.primaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Remix.search_line), activeIcon: Icon(Remix.search_line), label: 'さがす'),
          BottomNavigationBarItem(
              icon: Icon(Remix.suitcase_line), activeIcon: Icon(Remix.suitcase_fill), label: 'お仕事'),
          BottomNavigationBarItem(
              icon: Icon(Remix.chat_1_line), activeIcon: Icon(Remix.chat_1_fill), label: 'チャット '),
          BottomNavigationBarItem(
              icon: Icon(Remix.account_circle_line), activeIcon: Icon(Remix.account_circle_fill), label: 'マイページ'),
        ],
      ),
    );
  }
}
