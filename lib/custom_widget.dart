import 'package:flutter/material.dart';
import 'declarations.dart';

class MatrixInput extends StatelessWidget {
  final double width;
  final double height;
  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry padding;
  final Color color;
  final Decoration decoration;
  final Decoration foregroundDecoration;

  final TextEditingController matrixController;
  final bool enabled;
  final bool readOnly;
  final TextInputAction textInputAction;
  final int maxLength;
  final TextInputType keyboardType;
  final TextAlign textAlign;
  final Color cursorColor;
  final int maxLines;
  final int minLines;
  final TextDirection textDirection;
  final InputDecoration inputDecoration;
  final TextStyle style;
  final Color matrixBorderColor;

  MatrixInput(
      {this.width,
      this.height,
      this.alignment,
      this.padding,
      this.color,
      this.decoration,
      this.foregroundDecoration,
      this.matrixController,
      this.enabled = true,
      this.readOnly = false,
      this.textInputAction,
      this.maxLength,
      this.keyboardType,
      this.textAlign = TextAlign.start,
      this.cursorColor,
      this.maxLines = 1,
      this.minLines,
      this.textDirection,
      this.inputDecoration = const InputDecoration(),
      this.matrixBorderColor = const Color(0xFF000000),
      this.style})
      : assert(textAlign != null),
        assert(matrixBorderColor != null),
        assert(readOnly != null),
        assert(maxLines == null || maxLines > 0),
        assert(minLines == null || minLines > 0),
        assert(
          (maxLines == null) || (minLines == null) || (maxLines >= minLines),
        ),
        assert(maxLength == null ||
            maxLength == TextField.noMaxLength ||
            maxLength > 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: alignment,
      padding: padding,
      color: color,
      decoration: decoration,
      foregroundDecoration: decoration,
      child: Theme(
        data: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: matrixBorderColor, width: 2.0),
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: matrixBorderColor, width: 2.0),
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
          ),
        ),
        child: TextField(
          controller: matrixController,
          enabled: enabled,
          readOnly: readOnly,
          textInputAction: textInputAction,
          maxLength: maxLength,
          keyboardType: keyboardType,
          textAlign: textAlign,
          cursorColor: cursorColor,
          maxLines: maxLines,
          minLines: minLines,
          textDirection: textDirection,
          decoration: matrixDecoration,
          style: style,
        ),
      ),
    );
  }
}
