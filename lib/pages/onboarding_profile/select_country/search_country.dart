import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/core/snackbar.dart';
import 'package:medicon/core/utils/colors.dart';
import 'package:medicon/models/country.dart';
import 'package:medicon/pages/onboarding_profile/select_country/search_country.dart';
import 'package:medicon/pages/onboarding_profile/select_user_type/select_user_type.dart.dart';
import 'package:medicon/services/onboarding_services/onboarding_service.dart';
import 'package:medicon/utils/router.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_drop_down.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_textfield.dart';
import 'package:medicon/widgets/custom_textfield2.dart';
import 'package:medicon/widgets/empty_widget.dart';
import 'package:medicon/widgets/text_widgets.dart';
import 'package:provider/provider.dart';


class SearchCountry extends StatefulWidget {

  const SearchCountry({super.key});

  @override
  State<SearchCountry> createState() => _SearchCountryState();
}

class _SearchCountryState extends State<SearchCountry> {

 TextEditingController country = TextEditingController();
  List<Country> countries = [];
  List<Country> filtered = [];

  @override
  void initState() {
    readJson();
    super.initState();
  }

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/countries.json');
    final List data = await json.decode(response);
    for (var e in data) {
      countries.add(Country.fromJson(e));
    }
    setState(() {});
    filtered.addAll(countries);
  }

@override Widget build(BuildContext context) { 
  return Consumer<OnboardingServices>(
    builder: (context, selectCountryVM, child) {
      country.text = selectCountryVM.userCountry;
      return SafeArea(
        child: Scaffold(
          appBar: _buildAppBar(context), 
          body: Container(
            width: 375.h, 
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: CustomTextField(
                    hintText: 'Search for your country',
                    textInputType: TextInputType.text,
                    textInputAction: TextInputAction.search,
                    autoFocus: true,
                    onChanged: (a) {
                      a = a!.trim();
                      if (a.isNotEmpty) {
                        a = a.toUpperCase();
                        filtered.clear();
                        for (Country item in countries) {
                          if (item.country.toUpperCase().contains(a) ||
                              item.code.toUpperCase().contains(a)) {
                            filtered.add(item);
                          }
                        }
                      } else {
                        filtered.clear();
                        filtered.addAll(countries);
                      }
                      setState(() {});
                    },
                    suffixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/search.png', height: 16.h)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                filtered.isEmpty
                    ? const Expanded(child: AppEmptyWidget('Country not found', ''))
                    : Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.symmetric(horizontal: 15.h),
                            itemCount: filtered.length,
                            physics: const ClampingScrollPhysics(),
                            itemBuilder: (context, index) {
                              Country data = filtered[index];
                              return InkWell(
                                onTap: () => Navigator.pop(context, data),
                                child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 16.h),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: regularText(
                                            data.country,
                                            fontSize: 16.h,
                                            color: AppColors.textBlack,
                                          ),
                                        ),
                                        SizedBox(width: 10.h),
                                        regularText(
                                          data.code,
                                          fontSize: 16.h,
                                          color: AppColors.black,
                                        ),
                                      ],
                                    )),
                              );
                            }),
                      )
              ],
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
    ),
    title: Text("Search Country"),
  ); 
} 

/// Navigates to the onboardingProfileSixScreen when the action is triggered.
onTapContinue(BuildContext context) { 
  Navigator.pushNamed(context, AppRoutes.onboardingProfileSixScreen); 
  } 
}