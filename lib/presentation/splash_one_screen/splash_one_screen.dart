import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashOneScreen extends StatefulWidget {
  const SplashOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SplashOneScreen> createState() => _SplashOneScreenState();
}

class _SplashOneScreenState extends State<SplashOneScreen> {
  void initState() {

  }

  void hasAccount() async{
    SharedPreferences sf = await SharedPreferences.getInstance();

    //await sf.setString("token", "");

    String? token = sf.getString("token");
    String? fullName = sf.getString("fullName");
    bool? isOnbaordingPending = sf.getBool("isOnbaordingPending");
    print("isOnbaordingPending: $isOnbaordingPending");
    print(token);
    
    //nextPage(context, page: const OnboardingView());
    if(token == null || token == ""){
      Navigator.pushNamed(context, AppRoutes.loginOneScreen); 
      //nextPage(context, page: const LandingScreen());
    }
    /* else if(token.isEmpty == false && isOnbaordingPending == false){
      nextPageOnly(context, page:  WelcomeScreen(fullName!));
    } */
    /* else{
      nextPageOnly(context, page:  MainLayout(fullName: fullName!));
    } */
  }

  onTapTxtDonthaveanaccount(BuildContext context) { 
    Navigator.pushNamed(context, AppRoutes.createANewAccountTwoScreen); 
  } 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 375.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 28.v,
                    width: 29.h,
                    margin: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "Medicon",
                      style: CustomTextStyles.headlineLargeGray90007,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
