
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 18),),
            Icon(Icons.cancel, size: 50, color: Colors.white,)
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: const [
            Text("Let's create your ", style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),),
            Text("Account", style: TextStyle(color: Colors.orange, fontSize: 26, fontWeight: FontWeight.bold),)
          ],
        ),
      ],
    );
  }
}
