import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unit/model/node_model.dart';
import 'package:flutter_unit/model/widget_model.dart';



/// 说明: 详情状态类

abstract class DetailState  {
  const DetailState();

  @override
  List<Object> get props => [];
}

class DetailWithData extends DetailState {
  final WidgetModel widgetModel;
  final List<WidgetModel> links;
  final List<NodeModel> nodes;
  final Map<String,dynamic>  userdetails ;
  const DetailWithData({this.widgetModel,this.links,this.nodes,this.userdetails});

  @override
  List<Object> get props => [widgetModel,links,nodes,userdetails];

  @override
  String toString() {
    return 'DetailWithData{widget: $widgetModel, nodes: $nodes}';
  }

}

class DetailLoading extends DetailState {}

class DetailEmpty extends DetailState {}

class DetailFailed extends DetailState {}