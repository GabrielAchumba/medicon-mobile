import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/core/snackbar.dart';
import 'package:medicon/models/external_file.dart';
import 'package:medicon/services/common/file_storage_service.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_icon_button.dart';
import 'package:medicon/widgets/custom_text_form_field.dart';
import 'package:provider/provider.dart';

class CurrentEmploymentScreen extends StatefulWidget {

  final String groupName;

  const CurrentEmploymentScreen(this.groupName,
  {super.key});

  @override
  State<CurrentEmploymentScreen> createState() => _CurrentEmploymentScreenState();
}

class _CurrentEmploymentScreenState extends State<CurrentEmploymentScreen> {
  TextEditingController dateStarted = TextEditingController();

  BuildContext? _context;
  GrouppedExternalFiles grouppedExternalFiles = GrouppedExternalFiles();

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Consumer<FileStorageServices>(builder: (ctx, currentEmploymentVM, child) {
      return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: _buildAppBar(),
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
                  controller: dateStarted,
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
                _buildInputRow(),
                SizedBox(height: 32.v),
                _buildContainer(context),
                SizedBox(height: 32.v),
                CustomElevatedButton(
                  text: "Submit",
                  buttonTextStyle: theme.textTheme.titleSmall!,
                  busy: currentEmploymentVM.isLoading,
                  onPressed: () async {
                    if (dateStarted.text.isEmpty) {
                      errorSnackBar(context, 'Current Employement (date started) cannot be empty ');
                    } else {
                      FilePayload filePayload = await currentEmploymentVM.UploadFileOneByOneToGCP(
                        context: ctx,
                        grouppedExternalFiles: grouppedExternalFiles,
                        groupName: widget.groupName
                      );
                      filePayload.others = dateStarted.text;
                      Navigator.pop(_context!, filePayload);
                    }
                  },
                ),
                Spacer(
                  flex: 71,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 375.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputRow() {
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

  Widget _buildContainer(BuildContext context) {
    return DottedBorder(
      color: theme.colorScheme.primary,
      padding: EdgeInsets.only(
        left: 1.h,
        top: 1.v,
        right: 1.h,
        bottom: 1.v,
      ),
      strokeWidth: 1.h,
      radius: Radius.circular(3),
      borderType: BorderType.RRect,
      dashPattern: [
        3.764784336090088,
        3.764784336090088,
      ],
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 55.h,
          vertical: 33.v,
        ),
        decoration: AppDecoration.outlinePrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgIconPrimary,
              height: 34.adaptSize,
              width: 34.adaptSize,
            ),
            SizedBox(height: 17.v),
            SizedBox(
              width: 230.h,
              child: Text(
                "Browse and chose the files you want to upload from your computer",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumAeonikGray700_1,
              ),
            ),
            SizedBox(height: 13.v),
            CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(5.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              onTap: getImageGalleryPhone,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future getImageGalleryPhone() async {
    // * Pick a File

    try {
      FilePickerResult? result = 
      await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        allowedExtensions: ['pdf', 'doc'],
        //withData: true
        );

      if (result != null) {
        grouppedExternalFiles = GrouppedExternalFiles();
        for (var element in result.files) {
          List<int> fileBytes = [1, 2, 3];
          String fileName = element.name;
          String filePath = element.path!;
          var obj = ExternalFile(
            fileBytes, 
            fileName,
            filePath
          );
          print(filePath);
          grouppedExternalFiles.externalFiles.add(obj);
        }
        successSnackBar(_context!, "File(s) reading very successful");
      }else{
        errorSnackBar(_context!, "File(s) reading failed, please try again");
      }
    } on Exception catch (exception) {
      print("Error 1 occured");
      print(exception);
    } catch (error) {
      print("Error 2 occured");
      print(error);
    }
  }

}
