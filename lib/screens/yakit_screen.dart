import 'package:co2_salinim/components/default_app_button.dart';
import 'package:co2_salinim/components/default_dropdown_button.dart';
import 'package:co2_salinim/components/default_scaffold.dart';
import 'package:co2_salinim/components/default_text_form_field.dart';
import 'package:flutter/material.dart';

class YakitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "Yakıt Girişi",
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            DefaultDropDownButton(hintText: "Yakıt Türü", items: ["Doğalgaz", "Kömür", "Elektrik"]),
            SizedBox(height: 60),
            DefaultTextFormField(keyboardType: TextInputType.text,labelText: "Tüketilen Yakıt Miktarı"),
            SizedBox(height: 60),
            DefaultAppButton(text: "Kaydet"),
          ],
        ),
      ),
    );
  }
}