
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jiitak_test/src/config/themes/color_constants.dart';
import 'package:jiitak_test/src/config/themes/text_theme.dart';
import 'package:jiitak_test/src/shared/utils/resp_util.dart';
import 'package:remixicon/remixicon.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = RespUtil(context);
    return Scaffold(
        appBar: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          shadowColor: Colors.transparent,
          backgroundColor: ColorConstants.purpleBgColor,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: const Color.fromRGBO(148, 159, 254, 1),
              child: IconButton(
                  color: ColorConstants.white,
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(
                    Remix.arrow_left_line,
                  )),
            ),
          ),
          title: Text('スタンプカード詳細', style: resp.thm.textTheme.pMedium16Semibold.copyWith(color: ColorConstants.white)),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Remix.indeterminate_circle_line, color: ColorConstants.white)),
          ],
        ),
        body: Align(
            alignment: Alignment.topCenter,
            child: Column(children: <Widget>[
              Expanded(
                  child: Container(
                color: ColorConstants.purpleBgColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Mer キッチン',
                              style: resp.thm.textTheme.pMedium16Bold.copyWith(color: ColorConstants.white)),
                          RichText(
                            text: TextSpan(
                              text: "現在の獲得数",
                              style: resp.thm.textTheme.pSmall14Medium.copyWith(color: ColorConstants.white),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' 30 ',
                                    style: resp.thm.textTheme.pLarge18Bold
                                        .copyWith(color: ColorConstants.white, fontSize: 30.0)),
                                TextSpan(
                                    text: '個',
                                    style: resp.thm.textTheme.pLarge18Regular
                                        .copyWith(color: ColorConstants.white, fontSize: 20.0))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            color: ColorConstants.white,
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(32.0), topRight: Radius.circular(32.0))),
                        child: Column(
                          children: [
                            const SizedBox(height: 24.0),
                            SizedBox(
                              height: 240.0,
                              child: ListView.builder(
                                padding: const EdgeInsets.only(left: 24.0),
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.only(right: 24.0, top: 24.0, bottom: 24.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(24.0),
                                    height: 200.0,
                                    width: 320.0,
                                    decoration: BoxDecoration(
                                      color: ColorConstants.white,
                                      borderRadius: const BorderRadius.all(Radius.circular(32.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: ColorConstants.gray200.withOpacity(0.1),
                                          spreadRadius: 8.0,
                                          blurRadius: 5.0,
                                          offset: const Offset(0.0, 0.0),
                                        ),
                                      ],
                                    ),
                                    child: GridView.builder(
                                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 5,
                                        crossAxisSpacing: 15.0,
                                        mainAxisSpacing: 8.0,
                                      ),
                                      itemCount: 15,
                                      itemBuilder: (context, index) {
                                        return Image.asset(
                                          'assets/png/Star.png',
                                          fit: BoxFit.cover,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 24.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text('2 / 2枚目', style: resp.thm.textTheme.pSmall14Regular),
                              ),
                            ),
                            const SizedBox(height: 12.0),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 12.0),
                                      ListView.separated(
                                          shrinkWrap: true,
                                          itemCount: 10,
                                          physics: const NeverScrollableScrollPhysics(),
                                          separatorBuilder: (context, index) =>
                                              const Divider(color: ColorConstants.gray100),
                                          itemBuilder: (context, index) {
                                            return Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(height: 12.0),
                                                Text('スタンプ獲得履歴', style: resp.thm.textTheme.pSmall14Bold),
                                                const SizedBox(height: 12.0),
                                                Text('2021 / 11 / ${18 + index}',
                                                    style: resp.thm.textTheme.pSmall14Regular
                                                        .copyWith(color: ColorConstants.gray500)),
                                                const SizedBox(height: 6.0),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('スタンプを獲得しました。', style: resp.thm.textTheme.pSmall14Regular),
                                                    Text('1 個', style: resp.thm.textTheme.pMedium16Bold),
                                                  ],
                                                ),
                                                const SizedBox(height: 6.0),
                                              ],
                                            );
                                          }),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ])));
  }
}
