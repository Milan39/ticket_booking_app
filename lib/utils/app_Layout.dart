// ignore_for_file: slash_for_doc_comments

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
/**
 * It will return the height of the screen
 */
  static getScreenHeight(){
    return Get.height;
  }

/**
 * It will return the width of the screen
 */
  static getScreenWidth(){
    return Get.width;
  }

  /**
   * Simple calulation for this method
   * Suppose screen height is 400, and we need 200 height for the components in the screen then,
   * solution,
   * ScreenHeight = 400,
   * requiredHeight = 200,
   * firts of all we ill pass the required height in the getHeight methiod 
   * double X = getScreenHeight()/pixel = 400/200 = 2,
   * then method will return getScreenHeight()/X = 400/2 = 200 is the required height 
   * Same goes to getWidth() method
   */
  static getHeight(double pixel){
    double X = getScreenHeight()/pixel;
    return getScreenHeight()/X;
  }

  static getWidth(double pixel){
    double X = getScreenWidth()/pixel;
    return getScreenWidth()/X;
  }
}