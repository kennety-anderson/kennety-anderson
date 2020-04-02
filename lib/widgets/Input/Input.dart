import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  InputText(
      {this.labelText, this.keyBordType, this.onChange, this.obscureText});

  final labelText;
  final keyBordType;
  final obscureText;
  final Function onChange;

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  final FocusNode _focusNode = FocusNode();

  // Inicia o estado com um listener
  void initState() {
    _focusNode.addListener(focusListener);
    super.initState();
  }

  void dispose() {
    _focusNode.removeListener(focusListener);
    _focusNode.dispose();
    super.dispose();
  }

  void focusListener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: false,
      focusNode: _focusNode, //Altera a cor do label se o input estiver focado
      cursorColor: Colors.green,
      keyboardType: widget.keyBordType,
      obscureText: widget.obscureText == true ? true : false,
      style: TextStyle(color: Colors.white, fontSize: 20),
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: TextStyle(
          color: _focusNode.hasFocus ? Color(0xFFf7497d) : Colors.white,
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFf7497d))),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
      onChanged: (text) {
        this.widget.onChange(text);
      },
    );
  }
}
