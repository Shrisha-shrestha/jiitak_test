import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:jiitak_test/src/config/themes/color_constants.dart';
import 'package:jiitak_test/src/config/themes/text_theme.dart';
// import 'package:flutter/services.dart';
import 'package:remixicon/remixicon.dart';
// import 'package:rojgari/src/shared/shared.dart';

// import '../../config/config.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.title,
    required this.hintText,
    this.inputValidator,
    this.autoFocus = false,
    this.keyboardType,
    this.textInputAction = TextInputAction.next,
    this.controller,
    this.disableTextField = false,
    this.minLines,
    this.maxLines = 1,
  });

  final String? Function(String? value, String label)? inputValidator;
  final bool autoFocus;
  final TextInputType? keyboardType;
  final String title;
  final String hintText;
  final TextInputAction textInputAction;
  final TextEditingController? controller;
  final bool disableTextField;
  final int? minLines;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    final thm = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: title,
            style: thm.textTheme.pMedium16Regular.copyWith(color: ColorConstants.black),
            children: <TextSpan>[
              TextSpan(text: '*    ', style: thm.textTheme.pXsmall12Medium.copyWith(color: ColorConstants.danger400)),
            ],
          ),
        ),
        const SizedBox(height: 4.0),
        TextFormField(
          minLines: minLines,
          maxLines: minLines ?? maxLines,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          validator: (value) => inputValidator!(value, title),
          autofocus: autoFocus,
          cursorColor: ColorConstants.black,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          controller: controller,
          enabled: !disableTextField,
          style: thm.textTheme.pMedium16Regular.copyWith(color: ColorConstants.black),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: MaterialStateTextStyle.resolveWith(
                (states) => thm.textTheme.pSmall14Medium.merge(const TextStyle(color: ColorConstants.gray400))),
            contentPadding: minLines == null ? EdgeInsets.zero : const EdgeInsets.symmetric(vertical: 8.0),
            prefixIconConstraints: const BoxConstraints(maxWidth: 16.0),
            prefixIcon: Container(constraints: const BoxConstraints(maxWidth: 16.0, maxHeight: 8.0)),
            suffixIconConstraints: const BoxConstraints(maxWidth: 16.0),
            suffixIcon: Container(constraints: const BoxConstraints(maxWidth: 16.0, maxHeight: 8.0)),
            alignLabelWithHint: true,
            labelText: null,
            floatingLabelStyle: thm.textTheme.pXsmall12Medium.merge(const TextStyle(color: ColorConstants.gray400)),
            labelStyle: MaterialStateTextStyle.resolveWith(
                (states) => thm.textTheme.pMedium16Medium.merge(const TextStyle(color: ColorConstants.gray400))),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: ColorConstants.gray200), borderRadius: BorderRadius.circular(8.0)),
            disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: ColorConstants.gray200), borderRadius: BorderRadius.circular(8.0)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: ColorConstants.danger500),
                borderRadius: BorderRadius.circular(8.0)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: ColorConstants.danger500),
                borderRadius: BorderRadius.circular(8.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: thm.primaryColor), borderRadius: BorderRadius.circular(8.0)),
            errorStyle: const TextStyle(color: ColorConstants.danger500, fontSize: 10),
          ),
        ),
      ],
    );
  }
}

class CustomTextFormFieldWithPrefix extends StatelessWidget {
  const CustomTextFormFieldWithPrefix({
    super.key,
    this.title,
    required this.hintText,
    required this.prefixIcon,
    this.inputValidator,
    this.autoFocus = false,
    this.keyboardType,
    this.textInputAction = TextInputAction.next,
    this.controller,
  });

  final String? Function(String? value, String label)? inputValidator;
  final bool autoFocus;
  final String hintText;
  final TextInputType? keyboardType;
  final Widget prefixIcon;
  final String? title;
  final TextInputAction textInputAction;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    final thm = Theme.of(context);
    return TextFormField(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      // validator: (value) => inputValidator!(value, title),
      autofocus: autoFocus,
      cursorColor: ColorConstants.black,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      controller: controller,
      style: thm.textTheme.pMedium16Regular.copyWith(color: ColorConstants.black),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        alignLabelWithHint: true,
        hintText: hintText,
        hintStyle: MaterialStateTextStyle.resolveWith(
            (states) => thm.textTheme.pSmall14Medium.merge(const TextStyle(color: ColorConstants.gray400))),
        prefixIcon: prefixIcon,
        prefixIconColor: MaterialStateColor.resolveWith(
            (states) => states.contains(MaterialState.focused) ? thm.primaryColor : ColorConstants.gray400),
        labelText: title,
        floatingLabelStyle: thm.textTheme.pXsmall12Medium.merge(const TextStyle(color: ColorConstants.gray400)),
        labelStyle: MaterialStateTextStyle.resolveWith(
            (states) => thm.textTheme.pMedium16Medium.merge(const TextStyle(color: ColorConstants.gray400))),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstants.gray200), borderRadius: BorderRadius.circular(8.0)),
        disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstants.gray200), borderRadius: BorderRadius.circular(8.0)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstants.danger500), borderRadius: BorderRadius.circular(8.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstants.danger500), borderRadius: BorderRadius.circular(8.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: thm.primaryColor), borderRadius: BorderRadius.circular(8.0)),
        errorStyle: const TextStyle(color: ColorConstants.danger500, fontSize: 10),
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    final thm = Theme.of(context);
    return TextFormField(
      // onFieldSubmitted: (_) => onSubmit(fieldTextEditingController.text),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      style: thm.textTheme.pMedium16Regular.copyWith(color: ColorConstants.black),
      enabled: false,
      decoration: InputDecoration(
        fillColor: ColorConstants.gray50,
        filled: true,
        hintText: hintText,
        hintStyle: MaterialStateTextStyle.resolveWith(
            (states) => thm.textTheme.pSmall14Regular.merge(const TextStyle(color: ColorConstants.black))),
        contentPadding: EdgeInsets.zero,
        alignLabelWithHint: true,
        prefixIconConstraints: const BoxConstraints(maxWidth: 16.0),
        prefixIcon: Container(constraints: const BoxConstraints(maxWidth: 16.0, maxHeight: 8.0)),
        // suffixIcon: const Icon(Remix.arrow_down_s_line, size: 20),
        suffixIconColor: MaterialStateColor.resolveWith((states) => ColorConstants.gray400),
        floatingLabelStyle: thm.textTheme.pXsmall12Medium.merge(const TextStyle(color: ColorConstants.gray400)),
        labelStyle: MaterialStateTextStyle.resolveWith(
            (states) => thm.textTheme.pMedium16Medium.merge(const TextStyle(color: ColorConstants.gray400))),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstants.gray400), borderRadius: BorderRadius.circular(8.0)),
        disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstants.gray50), borderRadius: BorderRadius.circular(24.0)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstants.danger500), borderRadius: BorderRadius.circular(8.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstants.danger500), borderRadius: BorderRadius.circular(8.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: thm.primaryColor), borderRadius: BorderRadius.circular(8.0)),
        errorStyle: const TextStyle(color: ColorConstants.danger500, fontSize: 10),
      ),
    );
  }
}

class CustomDropDownWidget extends StatelessWidget {
  const CustomDropDownWidget({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    final thm = Theme.of(context);

    return Theme(
      data: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          errorStyle: TextStyle(color: ColorConstants.danger500, fontSize: 10.0),
        ),
      ),
      child: DropdownButtonFormField2(
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: ColorConstants.gray200),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: ColorConstants.gray200), borderRadius: BorderRadius.circular(8.0)),
          disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: ColorConstants.gray200), borderRadius: BorderRadius.circular(8.0)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: thm.primaryColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: ColorConstants.danger500),
          ),
        ),
        isExpanded: true,
        // validator: inputValidator != null ? (value) => inputValidator!(value, hintText) : null,
        // onChanged: onChanged,
        buttonStyleData: const ButtonStyleData(height: 48.0, padding: EdgeInsets.only(right: 16.0)),
        iconStyleData: const IconStyleData(
          icon: Icon(Remix.arrow_down_s_line, color: ColorConstants.gray400, size: 20),
          iconSize: 20,
        ),
        // dropdownStyleData: DropdownStyleData(
        //     decoration:
        //         BoxDecoration(color: ColorConstants.darkBlueishGrey, borderRadius: BorderRadius.circular(8.0))),
        hint:
            Text(hintText, style: thm.textTheme.pMedium16Medium.merge(const TextStyle(color: ColorConstants.gray400))),
        isDense: true,
        value: 'value',
        items: const [],
      ),
    );
  }
}

class CustomCheckBox extends StatelessWidget {
  final String text;
  const CustomCheckBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final thm = Theme.of(context);
    return FormField<bool>(
      validator: (value) => (value == true) ? null : 'validationMsg',
      builder: (FormFieldState<bool> field) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Theme(
                data: Theme.of(context).copyWith(
                  checkboxTheme: Theme.of(context).checkboxTheme.copyWith(
                        splashRadius: 2.0,
                        side: MaterialStateBorderSide.resolveWith(
                          (states) =>
                              BorderSide(color: (field.value ?? false) ? thm.primaryColor : ColorConstants.gray200),
                        ),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: ColorConstants.gray200, width: 1.0),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                ),
                child: Checkbox(
                  activeColor: thm.primaryColor,
                  value: field.value ?? false,
                  onChanged: (bool? value) {
                    field.didChange(value);
                  },
                ),
              ),
              Text(text, style: const TextStyle(color: ColorConstants.gray600, fontSize: 16.0)),
            ],
          ),
          if (field.errorText != null)
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(field.errorText ?? '', style: const TextStyle(color: ColorConstants.danger500, fontSize: 10)),
            ),
        ],
      ),
    );
  }
}
