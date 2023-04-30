
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PerformanceType extends StatefulWidget {
  const PerformanceType({Key? key}) : super(key: key);

  @override
  State<PerformanceType> createState() => _PerformanceTypeState();
}

class _PerformanceTypeState extends State<PerformanceType> {

  bool isPerson = false;
  bool isVirtual = false;

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
                    "Performance Type", style: TextStyle(color: Colors.white),
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

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: (){
                          setState(() {
                            isPerson = !isPerson;
                          });
                        },
                        child: isPerson
                            ? const Icon(CupertinoIcons.checkmark_square_fill, size: 35, color: Colors.orange,)
                            : const Icon(CupertinoIcons.square, size: 35, color: Colors.orange,)
                    ),
                    const SizedBox(width: 25,),
                    const Text("In Person", style: TextStyle(color: Colors.white),),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                        onTap: (){
                          setState(() {
                            isVirtual = !isVirtual;
                          });
                        },
                        child: isVirtual
                            ? const Icon(CupertinoIcons.checkmark_square_fill, size: 35, color: Colors.orange,)
                            : const Icon(CupertinoIcons.square, size: 35, color: Colors.orange,)
                    ),
                    const SizedBox(width: 25,),
                    const Text("Virtual", style: TextStyle(color: Colors.white),),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
