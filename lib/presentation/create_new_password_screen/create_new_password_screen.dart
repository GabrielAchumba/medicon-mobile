import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_text_form_field.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  CreateNewPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: 375.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 14.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Onboarding",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 10.v),
              Text(
                "Upload file from your computer ",
                style: theme.textTheme.bodyLarge,
              ),
              Spacer(
                flex: 28,
              ),
              Text(
                "Current Employment (date started)",
                style: CustomTextStyles.bodyLargeBluegray90018,
              ),
              SizedBox(height: 18.v),
              CustomTextFormField(
                controller: dateController,
                hintText: "Input Current Employer",
                hintStyle: CustomTextStyles.titleSmallOnError,
                textInputAction: TextInputAction.done,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 19.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGrayTL8,
              ),
              SizedBox(height: 17.v),
              _buildInputRow(context),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                text: "Submit",
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
              Spacer(
                flex: 71,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 375.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "13 January 1990",
              style: CustomTextStyles.bodyMediumAeonikBluegray900_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCalendarDateRangeOnerror,
            height: 22.adaptSize,
            width: 22.adaptSize,
          ),
        ],
      ),
    );
  }
}
