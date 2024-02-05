import '../onboarding_six_screen/widgets/ninetyoneslider_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingSixScreen extends StatelessWidget {
  OnboardingSixScreen({Key? key})
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
            horizontal: 14.h,
            vertical: 9.v,
          ),
          child: Column(
            children: [
              _buildHealthCheckAndStack(context),
              SizedBox(height: 44.v),
              _buildNinetyOneSlider(context),
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
                text: "Login to your account",
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                text: "Sign up your account",
                buttonStyle: CustomButtonStyles.fillGrayTL121,
                buttonTextStyle: CustomTextStyles.titleSmallGray90009,
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
  Widget _buildHealthCheckAndStack(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 192.v,
        width: 324.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 190.v,
                width: 324.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 324.h,
                        child: Text(
                          "Health check and Consultation easily anywhere and anytime",
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
                        right: 88.h,
                        bottom: 9.v,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector961Primary,
              height: 15.v,
              width: 134.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 1.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyOneSlider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
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
          return NinetyonesliderItemWidget();
        },
      ),
    );
  }
}
