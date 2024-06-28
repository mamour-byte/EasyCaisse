import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';



class Animations {

    //  animation pour le chargement
    Widget loading() {
      return Center(
        child: LoadingAnimationWidget.threeRotatingDots(
          size: 100, color: Colors.greenAccent,
        ),
      );
    }


}
