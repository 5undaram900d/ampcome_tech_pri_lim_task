
import 'dart:convert';

import 'package:ampcome_tech_pri_lim_task/custom_widget/a06_custom_appbar.dart';
import 'package:ampcome_tech_pri_lim_task/model/a04_genre_model.dart';
import 'package:ampcome_tech_pri_lim_task/model/a05_temp_array.dart';
import 'package:ampcome_tech_pri_lim_task/screens/a01_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class GenresScreen extends StatefulWidget {
  const GenresScreen({Key? key}) : super(key: key);

  @override
  State<GenresScreen> createState() => _GenresScreenState();
}

class _GenresScreenState extends State<GenresScreen> {

  List<GenreModel> dataList = [];        /// initialise an empty list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.only(right: 12, left: 12, top: 30),
        color: Colors.black12,
        child: Column(
          children: [

            /// Custom AppBar
            const Flexible(
              flex: 2,
              child: CustomAppBar(),
            ),

            const SizedBox(height: 20,),

            Flexible(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Genres", style: TextStyle(color: Colors.orange, fontSize: 18),),

                  const SizedBox(height: 8,),

                  FutureBuilder(
                    future: getData(),
                    builder: (context, snapshot) {
                      if(snapshot.hasData){
                        return Expanded(
                          child: SingleChildScrollView(
                            child: Wrap(
                              children: [
                                for (var ele in dataList)
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Consumer<FavouriteItemProvider>(
                                      builder: (context, value, child){
                                        return ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: value.tempArray.contains(ele.name.toString()) ? Colors.orange : Colors.white,
                                          ),
                                          onPressed: (){
                                            if(value.tempArray.contains(ele.name.toString())){
                                              value.removeItem(ele.name.toString());
                                            }
                                            else{
                                              value.addItem(ele.name.toString());
                                            }
                                            // debugPrint(tempArray.toString());
                                          },
                                          child: Text(ele.name.toString(), style: const TextStyle(color: Colors.black),),
                                        ).cornerRadius(30);
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        );
                      }
                      else{
                        return const CircularProgressIndicator();
                      }
                    }
                  ),

                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: (){
                      // Navigator.pop(context);
                    },
                    child: const Text('CANCEL', style: TextStyle(color: Colors.orange, fontSize: 20),),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (content)=> const HomeScreen(),),);
                    },
                    child: const Text('OK', style: TextStyle(color: Colors.orange, fontSize: 20),),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }








  Future<List<GenreModel>> getData() async {
    const uri = "https://apimocha.com/flutterassignment/getGenres";
    final url = Uri.parse(uri);
    final response = await http.get(url);
    var data = jsonDecode(response.body.toString());
    // debugPrint(data.toString());
    // debugPrint("\n");
    // debugPrint(data['data']['genres'][2]['name']);

    if(response.statusCode==200){
      data["data"]["genres"].forEach((element){
        GenreModel dataModel = GenreModel();
        debugPrint(dataModel.name.toString());
        dataModel = GenreModel.fromMap(element);
        dataList.add(dataModel);

        for (var element in dataList) {
          debugPrint(element.name);
        }
        debugPrint(dataList.length.toString());

        // return dataList;
      });
      return dataList;
    }
    else{
      return dataList;
    }
  }


}
