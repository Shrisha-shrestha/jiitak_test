import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jiitak_test/src/config/themes/color_constants.dart';
import 'package:jiitak_test/src/config/themes/text_theme.dart';
import 'package:jiitak_test/src/shared/utils/resp_util.dart';
import 'package:remixicon/remixicon.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = RespUtil(context);
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450.0),
          child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(children: <Widget>[
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 12.0,
                  runSpacing: 12.0,
                  children: {'木': '26', '金': '27', '土': '28', '日': '29', '月': '30', '火': '31', '水': '1'}
                      .entries
                      .map((e) => Container(
                            decoration: BoxDecoration(
                              color: e.value == '26' ? resp.primaryColor : ColorConstants.background,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: const EdgeInsets.all(12.0),
                            child: Column(children: [
                              Text(e.key,
                                  style: resp.thm.textTheme.pMedium16Bold.copyWith(
                                      color: e.value == '26' ? resp.thm.colorScheme.background : ColorConstants.black)),
                              Text(e.value,
                                  style: resp.thm.textTheme.pMedium16Bold.copyWith(
                                      color: e.value == '26' ? resp.thm.colorScheme.background : ColorConstants.black)),
                            ]),
                          ))
                      .toList(),
                ),
                const SizedBox(height: 24.0),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Stack(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Container(
                        height: 186.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/png/blog.png'), fit: BoxFit.cover),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(12.0),
                          ),
                        ),
                        clipBehavior: Clip.antiAlias,
                      ),
                    ),
                    Positioned(
                      bottom: 15.0,
                      left: 5.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Material(
                          clipBehavior: Clip.antiAlias,
                          child: Ink(
                            decoration: BoxDecoration(
                              color: ColorConstants.errorColor,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(minWidth: 32.0),
                              child: Text(
                                '本日まで',
                                style: resp.thm.textTheme.pXsmall12Bold.copyWith(color: ColorConstants.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: ColorConstants.white,
                          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.0)),
                          border: Border(top: BorderSide(color: ColorConstants.white))),
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）', style: resp.thm.textTheme.pMedium16Bold),
                          const SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Material(
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      color: resp.thm.primaryColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                                    child: Text(
                                      '介護付き有料老人ホーム',
                                      style: resp.thm.textTheme.pXsmall12Regular.copyWith(color: resp.thm.primaryColor),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '¥ 6,000',
                                style: resp.thm.textTheme.pMedium16Bold,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('5月 31日（水）08 : 00 ~ 17 : 00', style: resp.thm.textTheme.pSmall14Regular),
                              Text('北海道札幌市東雲町3丁目916番地17号', style: resp.thm.textTheme.pSmall14Regular),
                              Text('交通費 300円', style: resp.thm.textTheme.pSmall14Regular),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text('住宅型有料老人ホームひまわり倶楽部',
                                    style: resp.thm.textTheme.pXsmall12Regular.copyWith(color: ColorConstants.gray300)),
                              ),
                              IconButton(
                                  onPressed: () {}, icon: const Icon(Remix.heart_line, color: ColorConstants.gray300)),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ]),
                const SizedBox(height: 24.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      height: 186.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/png/blog2.png'), fit: BoxFit.cover),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(12.0),
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: ColorConstants.white,
                          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.0)),
                          border: Border(top: BorderSide(color: ColorConstants.white))),
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）', style: resp.thm.textTheme.pMedium16Bold),
                          const SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Material(
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      color: resp.thm.primaryColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                                    child: Text(
                                      '介護付き有料老人ホーム',
                                      style: resp.thm.textTheme.pXsmall12Regular.copyWith(color: resp.thm.primaryColor),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '¥ 6,000',
                                style: resp.thm.textTheme.pMedium16Bold,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('5月 31日（水）08 : 00 ~ 17 : 00', style: resp.thm.textTheme.pSmall14Regular),
                              Text('北海道札幌市東雲町3丁目916番地17号', style: resp.thm.textTheme.pSmall14Regular),
                              Text('交通費 300円', style: resp.thm.textTheme.pSmall14Regular),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text('住宅型有料老人ホームひまわり倶楽部',
                                    style: resp.thm.textTheme.pXsmall12Regular.copyWith(color: ColorConstants.gray300)),
                              ),
                              IconButton(
                                  onPressed: () {}, icon: const Icon(Remix.heart_line, color: ColorConstants.gray300)),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ])),
        ),
      ),
    );
  }
}
