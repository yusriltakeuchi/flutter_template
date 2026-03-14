import 'package:flutter/material.dart';
import 'package:flutter_template/utils/flavor/flavor_utils.dart';
class FlavorModel {
  final String packages;
  final FlavorType type;
  final String logoPath;
  final String name;
  final Color primaryColor;
  final Color primaryLightColor;
  final Color secondaryColor;
  final FlavorAPIModel api;

  FlavorModel({
    required this.packages,
    required this.type,
    required this.logoPath,
    required this.name,
    required this.primaryColor,
    required this.primaryLightColor,
    required this.secondaryColor,
    required this.api,
  });
}

class FlavorAPIModel {
  final String baseURL;
  FlavorAPIModel({
    required this.baseURL,
  });
}