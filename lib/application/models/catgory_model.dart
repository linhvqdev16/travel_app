import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class CategoryModel{

  String? label;

  Color? color;

  String? iconUrl;

  CategoryModel({
    this.label,
    this.color,
    this.iconUrl
});

}