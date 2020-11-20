import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unit/app/enums.dart';
import 'package:flutter_unit/storage/po/widget_po.dart';
import 'package:flutter_unit/model/widget_model.dart';



abstract class HomeEvent extends Equatable {
  const HomeEvent();
  @override
  List<Object> get props => [];
}

class EventTabTap extends HomeEvent {
  final WidgetFamily family;

  EventTabTap(this.family);

}


class EventTabPhoto extends HomeEvent {
  final Map<String,dynamic> family;

  EventTabPhoto(this.family);

}
class EventCheckUser extends HomeEvent {
  final Map<String,dynamic> user;
  final int status;
  EventCheckUser(this.user,this.status);

}

class EventDelImg extends HomeEvent {
  final Map<String,dynamic> user;
  final int status;
  EventDelImg(this.user,this.status);

}