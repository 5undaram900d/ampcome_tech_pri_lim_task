
import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {

  final String headName;
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;

  const TextFieldInput({Key? key, required this.headName, required this.textEditingController, this.isPass = false, required this.hintText, required this.textInputType}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              children: <InlineSpan>[
                WidgetSpan(
                  child: Text(
                    headName, style: const TextStyle(color: Colors.white),
                  ),
                ),
                const WidgetSpan(
                  child: Text(
                    '*',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 5,),

          TextField(
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.white),
              filled: true,
              contentPadding: const EdgeInsets.all(8),
            ),
            keyboardType: textInputType,
            obscureText: isPass,
          ),

        ],
      ),
    );
  }
}
