import 'package:flutter/material.dart';

class SLIDERMODEL {
  final image;
  SLIDERMODEL(this.image);

  static final List<SLIDERMODEL> items = [
    SLIDERMODEL(Container(
      child: GestureDetector(
        child: Image.asset("assets/images/date_time.png"),
        onTap: () {
          print("ok");
        },
      ),
    ))
  ];
}
