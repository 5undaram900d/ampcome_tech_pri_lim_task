
import 'package:ampcome_tech_pri_lim_task/model/a05_temp_array.dart';
import 'package:ampcome_tech_pri_lim_task/screens/a03_genres_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class GenreField extends StatefulWidget {
  const GenreField({Key? key}) : super(key: key);

  @override
  State<GenreField> createState() => _GenreFieldState();
}

class _GenreFieldState extends State<GenreField> {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Genres", style: TextStyle(color: Colors.white),),
          const SizedBox(height: 8,),
          tempArrayFinal.isEmpty
              ? InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const GenresScreen())),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 2, color: Colors.white54,),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        SizedBox(),
                        Icon(Icons.arrow_downward, color: Colors.white,),
                        SizedBox(width: 13,)
                      ],
                    ),
                  ),
                )
              : SingleChildScrollView(
                  child: Wrap(
                    children: [
                      for (var ele in tempArrayFinal)
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: (){
                              setState(() {
                                tempArrayFinal.remove(ele.toString());
                              });
                              // debugPrint(tempArrayFinal.toString());
                            },
                            child: Text(ele.toString(), style: const TextStyle(color: Colors.black),),
                          ).cornerRadius(30).badge(optionalWidget: const Icon(CupertinoIcons.clear, color: Colors.white, size: 18,), size: 22, color: Colors.black.withOpacity(0.7)),
                        ),
                      IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const GenresScreen(),),);
                        },
                        icon: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.add, color: Colors.orange, size: 32, weight: 100),
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
