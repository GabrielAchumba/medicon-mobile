import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingFiveScreen extends StatelessWidget {
  const OnboardingFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame1101382x375,
                height: 382.v,
                width: 375.h,
              ),
              SizedBox(height: 35.v),
              Text(
                "Your Personal Health App",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 21.v),
              Container(
                width: 298.h,
                margin: EdgeInsets.only(
                  left: 38.h,
                  right: 37.h,
                ),
                child: Text(
                  "Say goodbye to the frustration of waiting in long queues to see a doctor",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumAeonikBluegray400.copyWith(
                    height: 1.43,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              SizedBox(
                height: 8.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 11,
                    activeDotColor: appTheme.lightGreen50001,
                    dotColor: appTheme.blueGray10002,
                    dotHeight: 8.v,
                    dotWidth: 8.h,
                  ),
                ),
              ),
              SizedBox(height: 69.v),
              CustomElevatedButton(
                text: "Next",
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
              SizedBox(height: 16.v),
              CustomOutlinedButton(
                text: "Skip",
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                buttonTextStyle: CustomTextStyles.titleSmallGray90009,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
