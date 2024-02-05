import '../onboarding_five_one_screen/widgets/ninetyone_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingFiveOneScreen extends StatelessWidget {
  OnboardingFiveOneScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 375.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 7.v,
          ),
          child: Column(
            children: [
              _buildThousandOfDoctors(context),
              SizedBox(height: 44.v),
              _buildNinetyOne(context),
              SizedBox(height: 18.v),
              SizedBox(
                height: 8.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: sliderIndex,
                  count: 1,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 12.9,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: appTheme.blueGray10002,
                    dotHeight: 8.v,
                    dotWidth: 8.h,
                  ),
                ),
              ),
              SizedBox(height: 44.v),
              CustomElevatedButton(
                text: "Next",
              ),
              SizedBox(height: 16.v),
              CustomOutlinedButton(
                text: "Skip",
                buttonTextStyle: CustomTextStyles.titleMediumGray90009,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 45.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgUser,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 13.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarSubtitleOne(
        text: "Medicon",
        margin: EdgeInsets.only(left: 7.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildThousandOfDoctors(BuildContext context) {
    return SizedBox(
      height: 193.v,
      width: 334.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 189.v,
              width: 334.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 334.h,
                      child: Text(
                        "Thousand of Doctors and Expert to help with your Health needs",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.displaySmall!.copyWith(
                          height: 1.30,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCloseOnprimarycontainer,
                    height: 35.v,
                    width: 91.h,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(
                      right: 11.h,
                      bottom: 5.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector961Primary11x103,
            height: 11.v,
            width: 103.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 1.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 198.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            sliderIndex = index;
          },
        ),
        itemCount: 1,
        itemBuilder: (context, index, realIndex) {
          return NinetyoneItemWidget();
        },
      ),
    );
  }
}
