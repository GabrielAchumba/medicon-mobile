import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
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

class ProofOfMedicalQualificationScreen extends StatefulWidget {
  
  final String groupName;

  ProofOfMedicalQualificationScreen(this.groupName,{super.key});

  @override
  State<ProofOfMedicalQualificationScreen> createState() => _ProofOfMedicalQualificationScreenState();
}

class _ProofOfMedicalQualificationScreenState extends State<ProofOfMedicalQualificationScreen> {
  TextEditingController yearOfMedicalQualification = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GrouppedExternalFiles grouppedExternalFiles = GrouppedExternalFiles();
  BuildContext? _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Consumer<FileStorageServices>(builder: (ctx, medicalQualificationVM, child) {
      return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: _buildAppBar(),
          body: SizedBox(
            width: SizeUtils.width,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Form(
                key: _formKey,
                child: Container(
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
                      SizedBox(height: 69.v),
                      Container(
                        width: 308.h,
                        margin: EdgeInsets.only(right: 34.h),
                        child: Text(
                          "In what year did you qualify to practice medicine?",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLargeBluegray90018.copyWith(
                            height: 1.33,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.v),
                      CustomTextFormField(
                        controller: yearOfMedicalQualification,
                        hintText: "Year of qualification",
                        hintStyle: CustomTextStyles.titleSmallOnError,
                        textInputAction: TextInputAction.done,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 19.v,
                        ),
                        borderDecoration: TextFormFieldStyleHelper.fillGrayTL8,
                      ),
                      SizedBox(height: 44.v),
                      Container(
                        width: 281.h,
                        margin: EdgeInsets.only(right: 61.h),
                        child: Text(
                          "Please upload medical qualification (Certificate of qualification)",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLargeBluegray90018.copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                      SizedBox(height: 29.v),
                      Text(
                        "Upload in PDF or Doc",
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 14.v),
                      _buildContainer(medicalQualificationVM),
                      SizedBox(height: 5.v),
                    ],
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: _buildSubmit(medicalQualificationVM),
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
  Widget _buildContainer(FileStorageServices medicalQualificationVM) {
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

  /// Section Widget
  Widget _buildSubmit(FileStorageServices medicalQualificationVM) {
    return CustomElevatedButton(
      text: "Submit",
      busy: medicalQualificationVM.isLoading,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 74.v,
      ),
      buttonTextStyle: theme.textTheme.titleSmall!,
      onPressed: () async {
        if (yearOfMedicalQualification.text.isEmpty) {
          errorSnackBar(context, 'Year of medical qualification cannot be empty');
        } else {
          FilePayload filePayload = await medicalQualificationVM.UploadFileOneByOneToGCP(
            context: _context,
            grouppedExternalFiles: grouppedExternalFiles,
            groupName: widget.groupName
          );
          filePayload.others = yearOfMedicalQualification.text;
          Navigator.pop(_context!, filePayload);
        }
      },
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
