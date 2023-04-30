
import 'package:flutter/material.dart';

class MobileTextField extends StatelessWidget {

  final TextEditingController textEditingController;

  const MobileTextField({Key? key, required this.textEditingController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text.rich(
            TextSpan(
              children: <InlineSpan>[
                WidgetSpan(
                  child: Text(
                    "Mobile No", style: TextStyle(color: Colors.white),
                  ),
                ),
                WidgetSpan(
                  child: Text(
                    '*',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 8,),

          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 2, color: Colors.white54,),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 15),
                  color: Colors.grey,
                  child: const Text(" +91", style: TextStyle(color: Colors.white),),
                ),
                Expanded(
                  child: TextField(
                    controller: textEditingController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: "",
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2,),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2,),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1,),
                      ),
                      filled: true,
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
