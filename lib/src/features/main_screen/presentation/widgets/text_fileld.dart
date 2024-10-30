import 'package:bank_dash/src/core/resources/color_manager.dart';
import 'package:bank_dash/src/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultTextFieldWidget extends StatefulWidget {
  const DefaultTextFieldWidget({
    super.key,
    required this.hint,
    this.prefixIcon,
    this.crossAxisAlignment,
    this.controller,
    this.textInputAction,
    this.onChanged,
    this.onSubmitted,
    this.keyboardType,
    this.border,
    this.maxLines,
    this.startPadding,
    this.validator,
    this.inputFormatters,
    this.textDirection,
    this.textAlign,
    this.valid,
    this.suffixIcon,
    this.isPassword,
    this.hintStyle,
    this.hintTextDirection,
    this.prefixIconHeight,
    this.prefixIconWidth,
    this.contentPadding,
    this.errorMaxLines,
    this.errorTextheight,
    this.maxLength,
    this.buildCounter,
    this.decoration,
    this.initialValue,
    this.suffixIconConstraints,
    this.suffix,
  });

  final String hint;
  final dynamic prefixIcon;
  final CrossAxisAlignment? crossAxisAlignment;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final TextInputType? keyboardType;
  final InputBorder? border;
  final int? maxLines;
  final double? startPadding;
  final String? Function(String?)? validator;
  final List<FilteringTextInputFormatter>? inputFormatters;
  final TextDirection? textDirection;
  final TextAlign? textAlign;
  final bool? valid;
  final Widget? suffixIcon;
  final bool? isPassword;
  final TextStyle? hintStyle;
  final TextDirection? hintTextDirection;
  final double? prefixIconHeight;
  final double? prefixIconWidth;
  final EdgeInsetsGeometry? contentPadding;
  final int? errorMaxLines;
  final double? errorTextheight;
  final int? maxLength;
  final Widget? Function(BuildContext,
      {required int currentLength,
      required bool isFocused,
      required int? maxLength})? buildCounter;
  final InputDecoration? decoration;
  final String? initialValue;
  final BoxConstraints? suffixIconConstraints;
  final Widget? suffix;

  @override
  State<DefaultTextFieldWidget> createState() => _DefaultTextFieldWidgetState();
}

class _DefaultTextFieldWidgetState extends State<DefaultTextFieldWidget> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
      obscureText: widget.isPassword == true ? _obscureText : false,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      validator: widget.validator,
      controller: widget.controller,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      style: StyleManager.getRegularStyle(
        context,
        color: ColorManager.black,
        fontSize: 14,
      ),
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmitted,
      textDirection:
          widget.keyboardType == TextInputType.phone ? TextDirection.ltr : null,
      textAlign: widget.textAlign ?? TextAlign.start,
      maxLines: widget.maxLines ?? 1,
      inputFormatters: widget.keyboardType == TextInputType.number ||
              widget.keyboardType == TextInputType.phone
          ? [FilteringTextInputFormatter.allow(RegExp('[0-9+]'))]
          : [],
      decoration: widget.decoration ??
          InputDecoration(
            errorStyle:
                TextStyle(height: widget.errorTextheight, color: Colors.black),
            errorMaxLines: widget.maxLines,
            suffixIcon: widget.suffixIcon ?? _buildSuffixIcon(),
            suffix: widget.suffix,
            suffixIconConstraints: widget.suffixIconConstraints,
            contentPadding: widget.contentPadding,
            border: _border,
            errorBorder: _border,
            enabledBorder: _border,
            focusedBorder: _border,
            disabledBorder: _border,
            focusedErrorBorder: _border,
            hintText: widget.hint,
            hintTextDirection: widget.hintTextDirection,
            hintStyle: widget.hintStyle,
            prefixIcon: (widget.prefixIcon is String)
                ? widget.prefixIcon == null
                    ? null
                    : Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 20, end: 15),
                        child: SvgPicture.asset(
                          widget.prefixIcon!,
                          // color: ColorManager.grey,
                          fit: BoxFit.contain,
                          height: widget.prefixIconHeight ?? 16,
                          width: widget.prefixIconWidth ?? 16,
                        ),
                      )
                : widget.prefixIcon,
          ),
      maxLength: widget.maxLength,
      buildCounter: widget.buildCounter,
    );
  }

  InputBorder get _border =>
      widget.border ??
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: const BorderSide(
          color: ColorManager.transparent,
        ),
      );

  _buildSuffixIcon() {}
}
