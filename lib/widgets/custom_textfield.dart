import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicon/core/utils/colors.dart';
import 'package:medicon/core/utils/size_utils.dart';
import 'package:medicon/widgets/text_widgets.dart';

class CustomTextField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? suffix;
  final String? Function(String?)? validator;
  final String? hintText;
  final String? title;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;
  final Function(String?)? onChanged;
  final Function()? onTap;
  final TextEditingController? controller;
  final int? maxLines;
  final int? maxLength;
  final bool readOnly;
  final bool? enabled;
  final bool specialCase;
  final bool obscureText;
  final bool? autoFocus;
  final bool important;
  final bool busy;
  final bool enableCopy;
  final bool isCreate;
  final FocusNode? focusNode;
  final String? obscuringCharacter;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField({super.key, 
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.hintText,
    this.textInputAction,
    this.textInputType,
    this.textAlign,
    this.onChanged,
    this.controller,
    this.readOnly = false,
    this.obscureText = false,
    this.obscuringCharacter,
    this.maxLines = 1,
    this.onTap,
    this.autoFocus = false,
    this.focusNode,
    this.maxLength,
    this.title,
    this.enabled,
    this.suffix,
    this.inputFormatters,
    this.specialCase = false,
    this.busy = false,
    this.important = false,
    this.enableCopy = true,
    this.isCreate = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null)
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.h, left: 16.h),
                  child: regularText(
                    title!,
                    fontSize: 13.h,
                    color: AppColors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          TextFormField(
            enableInteractiveSelection: enableCopy,
            cursorColor: AppColors.black.withOpacity(0.4),
            cursorWidth: 1.h,
            focusNode: focusNode,
            maxLines: maxLines,
            autofocus: autoFocus!,
            enabled: enabled ?? true,
            maxLength: maxLength,
            inputFormatters: inputFormatters,
            textInputAction: textInputAction,
            style: GoogleFonts.rubik(
              color: AppColors.black,
              fontSize: 13.h,
              letterSpacing: 0.4,
              //fontWeight: FontWeight.w600,
            ),
            readOnly: readOnly,
            decoration: InputDecoration(
              counterText: '',
              contentPadding: EdgeInsets.all(15.h),
              hintText: hintText,
              hintStyle: GoogleFonts.rubik(
                color: isCreate ? AppColors.black : AppColors.textBlack,
                fontSize: 13.h,
                fontWeight: FontWeight.w400,
              ),
              filled: true,
              fillColor: AppColors.grey,
              errorStyle: GoogleFonts.rubik(
                color: AppColors.red,
                fontSize: 10.5.h,
                fontWeight: FontWeight.w400,
              ),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              suffix: suffix,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.grey,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(8.h),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.darkGreen,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(8.h),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.red,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(8.h),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.red,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(8.h),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.white,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(8.h),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.darkBlue.withOpacity(.05),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(8.h),
              ),
            ),
            obscureText: obscureText,
            onTap: onTap,
            obscuringCharacter: '●',
            //obscuringCharacter: '.',
            controller: controller,
            textAlign: textAlign ?? TextAlign.start,
            keyboardType: textInputType,
            validator: validator,
            onChanged: onChanged,
          )
        ],
      ),
    );
  }
}
