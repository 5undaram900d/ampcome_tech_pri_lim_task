
import 'package:ampcome_tech_pri_lim_task/custom_widget/a02_text_field_input.dart';
import 'package:ampcome_tech_pri_lim_task/custom_widget/a06_custom_appbar.dart';
import 'package:ampcome_tech_pri_lim_task/custom_widget/a07_mobile_textfield_widget.dart';
import 'package:ampcome_tech_pri_lim_task/custom_widget/a08_genre_field.dart';
import 'package:ampcome_tech_pri_lim_task/custom_widget/a09_performance_type.dart';
import 'package:ampcome_tech_pri_lim_task/custom_widget/a10_submit_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
        color: Colors.black12,
        child: Column(
          children: [
            
            /// Custom AppBar
            Container(
              color: Colors.black,
              child: const CustomAppBar(),
            ),

            const SizedBox(height: 20,),
            
            /// for entry
            Flexible(
              child: ListView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                children: [
                  TextFieldInput(headName: "First Name", textEditingController: _firstNameController, hintText: "", textInputType: TextInputType.text),

                  TextFieldInput(headName: "Last Name", textEditingController: _lastNameController, hintText: "", textInputType: TextInputType.text),

                  MobileTextField(textEditingController: _mobileController),

                  TextFieldInput(headName: "Email", textEditingController: _emailController, hintText: "", textInputType: TextInputType.emailAddress),

                  const GenreField(),

                  const PerformanceType(),

                  const SubmitButton(),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
