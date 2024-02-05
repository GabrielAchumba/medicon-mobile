import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/core/snackbar.dart';
import 'package:medicon/core/utils/colors.dart';
import 'package:medicon/models/country.dart';
import 'package:medicon/pages/onboarding_profile/select_country/search_country.dart';
import 'package:medicon/services/onboarding_services/onboarding_service.dart';
import 'package:medicon/utils/router.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_drop_down.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_textfield.dart';
import 'package:medicon/widgets/custom_textfield2.dart';
import 'package:provider/provider.dart';


class SelectCountryScreen extends StatefulWidget {

  const SelectCountryScreen({super.key});

  @override
  State<SelectCountryScreen> createState() => _SelectCountryScreenState();
}

class _SelectCountryScreenState extends State<SelectCountryScreen> {

 TextEditingController country = TextEditingController();
  bool removeImage = true;
  bool removeBack = false;

  @override
  void initState() {
    super.initState();
    Future.microtask(() => Provider.of<OnboardingServices>(context, listen: false).GetUserCountry());
  }

@override Widget build(BuildContext context) { 
  return Consumer<OnboardingServices>(
    builder: (context, selectCountryVM, child) {
      return SafeArea(
        child: Scaffold(
          appBar: _buildAppBar(context), 
          body: Container(
            width: 375.h, 
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                Text(
                  "Add History ", 
                  style: theme.textTheme.headlineSmall
                ), 
                Spacer(flex: 62), 
                Text(
                  "Which country are you from?", 
                  style: CustomTextStyles.bodyLargeBluegray90019
                ), 
                SizedBox(height: 21.v),
                country.text.isNotEmpty
                      ? CustomTextField2(
                          title: 'Country',
                          textInputType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          controller: country,
                          readOnly: true,
                          onTap: () async {
                            Country? res = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SearchCountry(),
                              ),
                            );
                            if (res != null) {
                              selectCountryVM.setUserCountry(res.country);
                              country.text = selectCountryVM.userCountry;
                            }
                            setState(() {});
                          },
                          suffixIcon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10.h),
                                child: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: AppColors.grey,
                                  size: 28.h,
                                ),
                              ),
                            ],
                          ),
                        )
                    : CustomTextField(
                    hintText: 'Select Country',
                    textInputType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: country,
                    readOnly: true,
                    onTap: () async {
                      Country? res = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchCountry(),
                        ),
                      );
                      if (res != null) {
                        selectCountryVM.setUserCountry(res.country);
                        country.text = selectCountryVM.userCountry;
                      }
                      setState(() {});
                    },
                    suffixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10.h),
                          child: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: AppColors.textBlack,
                            size: 28.h,
                          ),
                        ),
                      ],
                    ),
                ), 
                SizedBox(height: 32.v), 
                CustomElevatedButton(
                  text: "Continue", 
                  busy: false,
                  onPressed: () {
                  if (country.text.isEmpty) {
                      errorSnackBar(context, 'Selected country cannot be empty ');
                  }else{
                    nextPage(context, page:  SelectUserScreen(
                    country.text,
                    ));
                  }
                  
                },
                ), 
                Spacer(flex: 37)
              ]
            )
          )
        )
      ); 
  });
} 

/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { 
  return CustomAppBar(
    leadingWidth: 375.h, 
    leading: AppbarLeadingImage(
      imagePath: ImageConstant.imgVector, 
      margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v)
    )
  ); 
} 

/// Navigates to the onboardingProfileSixScreen when the action is triggered.
onTapContinue(BuildContext context) { 
  Navigator.pushNamed(context, AppRoutes.onboardingProfileSixScreen); 
  } 
}