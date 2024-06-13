import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jiitak_test/src/config/themes/color_constants.dart';
import 'package:jiitak_test/src/config/themes/text_theme.dart';
import 'package:jiitak_test/src/features/edit_profile/widgets/custom_image_widget.dart';
import 'package:jiitak_test/src/features/edit_profile/widgets/custom_title_widget.dart';
import 'package:jiitak_test/src/shared/utils/resp_util.dart';
import 'package:jiitak_test/src/shared/widgets/custom_buttons.dart';
import 'package:jiitak_test/src/shared/widgets/custom_form_fields.dart';
import 'package:remixicon/remixicon.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  @override
  Widget build(BuildContext context) {
    final resp = RespUtil(context);

    return Scaffold(
      backgroundColor: ColorConstants.white,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.5,
        shadowColor: ColorConstants.gray300,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: ColorConstants.gray100,
            child: IconButton(
                color: ColorConstants.gray400,
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(
                  Remix.arrow_left_line,
                )),
          ),
        ),
        title: Text('店舗プロフィール編集', style: resp.thm.textTheme.pMedium16Medium),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {},
              child: const Stack(
                alignment: Alignment.topRight,
                children: [
                  Icon(Remix.notification_line, size: 26.0),
                  CircleAvatar(
                    radius: 7.0,
                    backgroundColor: ColorConstants.danger300,
                    foregroundColor: ColorConstants.danger300,
                    child: Text('99+', style: TextStyle(color: Colors.white, fontSize: 6.0)),
                  ),
                ],
              )),
          const SizedBox(width: 10.0),
        ],
      ),
      body: SingleChildScrollView(
          child: Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 450.0),
                  child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                        const CustomTextFormField(
                          title: '店舗名',
                          hintText: 'Mer キッチン',
                        ),
                        const SizedBox(height: 16.0),
                        const CustomTextFormField(
                          title: '代表担当者名',
                          hintText: '林田　絵梨花',
                        ),
                        const SizedBox(height: 16.0),
                        const CustomTextFormField(
                          title: '店舗電話番号',
                          hintText: '123 - 4567 8910',
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 16.0),
                        const CustomTextFormField(
                          title: '店舗住所',
                          hintText: '大分県豊後高田市払田791-13',
                        ),
                        const SizedBox(height: 16.0),
                        Image.asset(
                          'assets/png/map.png',
                          width: 450.0,
                        ),
                        const SizedBox(height: 16.0),
                        const CustomTitleWidget(title: '店舗外観', subtitle: '（最大3枚まで）'),
                        const SizedBox(height: 4.0),
                        const Row(
                          children: [
                            CustomImageWidget(hasImage: true, imagePath: 'assets/png/image1.png'),
                            CustomImageWidget(hasImage: true, imagePath: 'assets/png/image1.png'),
                            CustomImageWidget(hasImage: false),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const CustomTitleWidget(title: '店舗内観', subtitle: '（1枚〜3枚ずつ追加してください）'),
                        const SizedBox(height: 4.0),
                        const Row(
                          children: [
                            CustomImageWidget(hasImage: true, imagePath: 'assets/png/image2.png'),
                            CustomImageWidget(hasImage: true, imagePath: 'assets/png/image2.png'),
                            CustomImageWidget(hasImage: true, imagePath: 'assets/png/image2.png'),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const CustomTitleWidget(title: '料理写真', subtitle: '（1枚〜3枚ずつ追加してください）'),
                        const SizedBox(height: 4.0),
                        const Row(
                          children: [
                            CustomImageWidget(hasImage: true, imagePath: 'assets/png/image3.png'),
                            CustomImageWidget(hasImage: true, imagePath: 'assets/png/image4.png'),
                            CustomImageWidget(hasImage: true, imagePath: 'assets/png/image5.png'),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const CustomTitleWidget(title: 'メニュー写真', subtitle: '（1枚〜3枚ずつ追加してください）'),
                        const SizedBox(height: 4.0),
                        const Row(
                          children: [
                            CustomImageWidget(hasImage: true, imagePath: 'assets/png/image6.png'),
                            CustomImageWidget(hasImage: true, imagePath: 'assets/png/image7.png'),
                            CustomImageWidget(hasImage: true, imagePath: 'assets/png/image8.png'),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const CustomTitleWidget(title: '営業時間', subtitle: ''),
                        const SizedBox(height: 4.0),
                        const Row(
                          children: [
                            SizedBox(width: 120.0, child: CustomDropDownWidget(hintText: '10 : 00')),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Text('~', style: TextStyle(color: ColorConstants.gray600, fontSize: 26.0)),
                            ),
                            SizedBox(width: 120.0, child: CustomDropDownWidget(hintText: '20 : 00')),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const CustomTitleWidget(title: 'ランチ時間', subtitle: ''),
                        const SizedBox(height: 4.0),
                        const Row(
                          children: [
                            SizedBox(width: 120.0, child: CustomDropDownWidget(hintText: '11 : 00')),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Text('~', style: TextStyle(color: ColorConstants.gray600, fontSize: 26.0)),
                            ),
                            SizedBox(width: 120.0, child: CustomDropDownWidget(hintText: '15 : 00')),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const CustomTitleWidget(title: '定休日', subtitle: ''),
                        const SizedBox(height: 4.0),
                        const Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                          Row(
                            children: [
                              CustomCheckBox(text: '月'),
                              CustomCheckBox(text: '火'),
                              CustomCheckBox(text: '水'),
                              CustomCheckBox(text: '木'),
                            ],
                          ),
                          SizedBox(height: 4.0),
                          Row(
                            children: [
                              CustomCheckBox(text: '金'),
                              CustomCheckBox(text: '土'),
                              CustomCheckBox(text: '日'),
                              CustomCheckBox(text: '祝'),
                            ],
                          ),
                        ]),
                        const SizedBox(height: 16.0),
                        const CustomTitleWidget(title: '料理カテゴリー', subtitle: ''),
                        const SizedBox(height: 4.0),
                        SizedBox(width: resp.wR * 200.0, child: const CustomDropDownWidget(hintText: '料理カテゴリー選択')),
                        const SizedBox(height: 16.0),
                        const CustomTitleWidget(title: '予算', subtitle: ''),
                        const SizedBox(height: 4.0),
                        const Row(
                          children: [
                            SizedBox(
                              width: 120.0,
                              child: CustomTextFormFieldWithPrefix(
                                  hintText: '1,000',
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(left: 10.0, top: 4.0),
                                    child: Text('¥', style: TextStyle(color: ColorConstants.gray600, fontSize: 20.0)),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Text('~', style: TextStyle(color: ColorConstants.gray600, fontSize: 26.0)),
                            ),
                            SizedBox(
                              width: 120.0,
                              child: CustomTextFormFieldWithPrefix(
                                  hintText: '2,000',
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(left: 10.0, top: 4.0),
                                    child: Text('¥', style: TextStyle(color: ColorConstants.gray600, fontSize: 20.0)),
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const CustomTextFormField(title: 'キャッチコピー', hintText: '美味しい！リーズナブルなオムライスランチ！'),
                        const SizedBox(height: 16.0),
                        const CustomTextFormField(title: '座席数', hintText: '40席'),
                        const SizedBox(height: 16.0),
                        const CustomTitleWidget(title: '喫煙席', subtitle: ''),
                        const SizedBox(height: 4.0),
                        const Row(
                          children: [
                            CustomCheckBox(text: '有'),
                            SizedBox(width: 16.0),
                            CustomCheckBox(text: '無'),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const CustomTitleWidget(title: '駐車場', subtitle: ''),
                        const SizedBox(height: 4.0),
                        const Row(
                          children: [
                            CustomCheckBox(text: '有'),
                            SizedBox(width: 16.0),
                            CustomCheckBox(text: '無'),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const CustomTitleWidget(title: '来店プレゼント', subtitle: ''),
                        const SizedBox(height: 4.0),
                        const Row(
                          children: [
                            CustomCheckBox(text: '有（最大３枚まで）'),
                            SizedBox(width: 16.0),
                            CustomCheckBox(text: '無'),
                          ],
                        ),
                        const SizedBox(height: 4.0),
                        const Row(
                          children: [
                            CustomImageWidget(hasImage: true, imagePath: 'assets/png/image9.png'),
                            CustomImageWidget(hasImage: true, imagePath: 'assets/png/image10.png'),
                            CustomImageWidget(hasImage: true, imagePath: 'assets/png/image11.png'),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const CustomTextFormField(title: '来店プレゼント名', hintText: 'いちごクリームアイスクリーム, ジュース'),
                        const SizedBox(height: 24.0),
                        CustomElevatedButton(
                          title: '編集を保存',
                          onPressed: () {},
                          backgroundColor: resp.primaryColor,
                          size: const Size(double.infinity, 48.0),
                          titleStyle:
                              resp.thm.textTheme.pMedium16Medium.merge(const TextStyle(color: ColorConstants.white)),
                        ),
                      ]))))),
    );
  }
}
