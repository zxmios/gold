import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// 说明: 全局状态类
///
class GlobalState extends Equatable {
  /// [fontFamily] 文字字体
  final String fontFamily;

  /// [themeColor] 主题色
  final MaterialColor themeColor;

  /// [showBackGround] 是否显示主页背景图
  final bool showBackGround;

  /// [codeStyleIndex] 代码样式 索引
  final int codeStyleIndex;

  /// [itemStyleIndex] 主页item样式 索引
  final int itemStyleIndex;

  /// [showPerformanceOverlay] 是否显示性能浮层
  final bool showPerformanceOverlay;

  /// [indexPhotoPage] 首页照片审核图
  final int indexPhotoPage;

  /// [headNum] 首页照片审核图
  final List<String> headNum;

  const GlobalState({
    this.fontFamily = 'ComicNeue',
    this.themeColor = Colors.blue,
    this.showBackGround = true,
    this.codeStyleIndex = 0,
    this.itemStyleIndex = 0,
    this.showPerformanceOverlay = false,
    this.indexPhotoPage =1,
    this.headNum,
  });

  @override
  List<Object> get props => [
        fontFamily,
        themeColor,
        showBackGround,
        codeStyleIndex,
        itemStyleIndex,
        showPerformanceOverlay,
        indexPhotoPage,
        headNum
      ];

  GlobalState copyWith({
    double height,
    String fontFamily,
    MaterialColor themeColor,
    bool showBackGround,
    int codeStyleIndex,
    int itemStyleIndex,
    bool showPerformanceOverlay,
    int  indexPhotoPage,
    List<String> headNum
  }) =>
      GlobalState(
        fontFamily: fontFamily ?? this.fontFamily,
        themeColor: themeColor ?? this.themeColor,
        showBackGround: showBackGround ?? this.showBackGround,
        codeStyleIndex: codeStyleIndex ?? this.codeStyleIndex,
        itemStyleIndex: itemStyleIndex ?? this.itemStyleIndex,
        showPerformanceOverlay: showPerformanceOverlay ?? this.showPerformanceOverlay,
        indexPhotoPage:  indexPhotoPage ?? this.indexPhotoPage,
          headNum:headNum??this.headNum
      );

  @override
  String toString() {
    return 'GlobalState{fontFamily: $fontFamily, themeColor: $themeColor, showBackGround: $showBackGround, codeStyleIndex: $codeStyleIndex, itemStyleIndex: $itemStyleIndex, showPerformanceOverlay: $showPerformanceOverlay}, indexPhotoPage: $indexPhotoPage}';
  }
}
