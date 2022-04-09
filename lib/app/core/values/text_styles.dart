import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_explorer/app/core/values/app_colors.dart';

TextStyle centerTextStyle = GoogleFonts.roboto(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: AppColors.centerTextColor,
);

TextStyle errorTextStyle = GoogleFonts.roboto(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: AppColors.errorColor,
);

TextStyle greyDarkTextStyle = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textColorGreyDark,
    height: 1.45);

TextStyle primaryColorSubtitleStyle = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.colorPrimary,
    height: 1.45);

TextStyle whiteText16 = GoogleFonts.roboto(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

TextStyle highlightStyle = GoogleFonts.roboto(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: AppColors.highlighColor,
);

TextStyle whiteText18 = GoogleFonts.roboto(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

TextStyle whiteText32 = GoogleFonts.roboto(
  fontSize: 32,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

TextStyle cyanText16 = GoogleFonts.roboto(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: AppColors.textColorCyan,
);

TextStyle cyanText32 = GoogleFonts.roboto(
  fontSize: 32,
  fontWeight: FontWeight.w400,
  color: AppColors.textColorCyan,
);

TextStyle dialogSubtitle = GoogleFonts.roboto(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: AppColors.textColorPrimary,
);

TextStyle labelStyle = GoogleFonts.roboto(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  height: 1.8,
);

final labelStylePrimaryTextColor = labelStyle.copyWith(
  color: AppColors.textColorPrimary,
  height: 1,
);

final labelStyleAppPrimaryColor = labelStyle.copyWith(
  color: AppColors.colorPrimary,
  height: 1,
);

final labelStyleGrey =
    labelStyle.copyWith(color: const Color(0xFF323232).withOpacity(0.5));

final labelCyanStyle = labelStyle.copyWith(color: AppColors.textColorCyan);

TextStyle labelStyleWhite = GoogleFonts.roboto(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  height: 1.8,
  color: Colors.white,
);

TextStyle appBarSubtitleStyle = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.25,
    color: AppColors.colorWhite);

TextStyle cardTitleStyle = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.2,
    color: Colors.white);

TextStyle cardTitleCyanStyle = GoogleFonts.roboto(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: AppColors.colorPrimary,
);

TextStyle cardSubtitleStyle = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.2,
    color: AppColors.textColorGreyLight);

TextStyle titleStyle = GoogleFonts.roboto(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  height: 1.34,
);

TextStyle settingsItemStyle = GoogleFonts.roboto(
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

final cardTagStyle = titleStyle.copyWith(color: AppColors.textColorGreyDark);

TextStyle titleStyleWhite = GoogleFonts.roboto(
    fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.colorWhite);

TextStyle inputFieldLabelStyle = GoogleFonts.roboto(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  height: 1.34,
  color: AppColors.textColorPrimary,
);

TextStyle cardSmallTagStyle = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.2,
    color: AppColors.textColorGreyDark);

TextStyle pageTitleStyle = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.15,
    color: AppColors.appBarTextColor);

final pageTitleBlackStyle =
    pageTitleStyle.copyWith(color: AppColors.textColorPrimary);

TextStyle appBarActionTextStyle = GoogleFonts.roboto(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: AppColors.colorPrimary,
);

TextStyle pageTitleWhiteStyle = GoogleFonts.roboto(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    height: 1.15,
    color: AppColors.colorWhite);

TextStyle extraBigTitleStyle = GoogleFonts.roboto(
  fontSize: 40,
  fontWeight: FontWeight.w600,
  height: 1.12,
);

final extraBigTitleCyanStyle =
    extraBigTitleStyle.copyWith(color: AppColors.textColorCyan);

TextStyle bigTitleStyle = GoogleFonts.roboto(
  fontSize: 28,
  fontWeight: FontWeight.w700,
  height: 1.15,
);

TextStyle mediumTitleStyle = GoogleFonts.roboto(
  fontSize: 24,
  fontWeight: FontWeight.w500,
  height: 1.15,
);

TextStyle descriptionTextStyle = GoogleFonts.roboto(
  fontSize: 16,
);

final bigTitleCyanStyle =
    bigTitleStyle.copyWith(color: AppColors.textColorCyan);

TextStyle bigTitleWhiteStyle = GoogleFonts.roboto(
  fontSize: 28,
  fontWeight: FontWeight.w700,
  height: 1.15,
  color: Colors.white,
);

TextStyle boldTitleStyle = GoogleFonts.roboto(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  height: 1.34,
);
final boldTitleWhiteStyle =
    boldTitleStyle.copyWith(color: AppColors.textColorWhite);

final boldTitleCyanStyle =
    boldTitleStyle.copyWith(color: AppColors.textColorCyan);

final boldTitleSecondaryColorStyle =
    boldTitleStyle.copyWith(color: AppColors.textColorSecondary);

final boldTitlePrimaryColorStyle =
    boldTitleStyle.copyWith(color: AppColors.colorPrimary);
