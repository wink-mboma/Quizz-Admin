import 'package:admin/screens/main/quiz.dart';
import 'package:flutter/material.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/main/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';
class AddNewQuestion extends StatefulWidget {
  const AddNewQuestion({Key? key}) : super(key: key);

  @override
  _AddNewQuestionState createState() => _AddNewQuestionState();
}

class _AddNewQuestionState extends State<AddNewQuestion> {
  @override


  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter Question Details",
            style: TextStyle(
              fontSize: 18,

              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: defaultPadding),


          TextField(

            decoration: InputDecoration(
              hintText: "Enter Question ",
              fillColor: primaryColor,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              suffixIcon: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(defaultPadding * 0.75),
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: SvgPicture.asset("assets/icons/details.svg"),
                ),
              ),

            ),
          ),
          SizedBox(height: defaultPadding),

          TextField(

            decoration: InputDecoration(
              hintText: "Enter answer 1",
              fillColor: primaryColor,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              suffixIcon: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(defaultPadding * 0.75),
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: SvgPicture.asset("assets/icons/details.svg"),
                ),
              ),

            ),
          ),


          SizedBox(height: defaultPadding),


          TextField(

            decoration: InputDecoration(
              hintText: "Enter answer 2",
              fillColor: primaryColor,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              suffixIcon: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(defaultPadding * 0.75),
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: SvgPicture.asset("assets/icons/details.svg"),
                ),
              ),

            ),
          ),

          SizedBox(height: defaultPadding),

          TextField(

            decoration: InputDecoration(
              hintText: "Enter answer 3",
              fillColor: primaryColor,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              suffixIcon: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(defaultPadding * 0.75),
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: SvgPicture.asset("assets/icons/details.svg"),
                ),
              ),

            ),
          ),

          SizedBox(height: defaultPadding),
          ElevatedButton.icon(
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding * 1.5,
                vertical:
                defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
              ),
            ),
            onPressed: () {


              Navigator.push(context, MaterialPageRoute(

                  builder: (context)=>

                      question()
              )

              );

            },
            icon: Icon(Icons.add),
            label: Text("Add Question"),
          ),


          SizedBox(height: defaultPadding),
          ElevatedButton.icon(
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding * 1.5,
                vertical:
                defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
              ),
            ),
            onPressed: () {

              Navigator.push(context, MaterialPageRoute(

                  builder: (context)=>

                      quiz()
              )

              );


            },
            icon: Icon(Icons.save_outlined),
            label: Text("Submit"),
          ),
        ],
      ),
    );
  }
}
