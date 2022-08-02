import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Gudg/Gudg.dart';
import '../shared/Colors.dart';
import 'cubitt/cubitt2.dart';
import 'cubitt/statee2.dart';


class ComppRate extends StatelessWidget {
   String? id;


   ComppRate(this.id);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(  
      create: (BuildContext context) =>CompRateeCubit()..Camp_rate(id!),
      child: BlocConsumer<CompRateeCubit, CompRateStates1>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(45.0),
                child: AppBar(
                  elevation: 4,
                  backgroundColor: Color5,
                  flexibleSpace: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            child: Image.asset("images/ministry-logo-header.png",
                                fit: BoxFit.cover),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            height: 40,
                            child:
                            Image.asset("images/logo.png", fit: BoxFit.cover),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            height: 40,
                            child: Image.asset("images/scc-logo.png",
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              backgroundColor: kPrimaryColor,
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CompRateeCubit.get(context).CompRatee==null
                      ? const CircularProgressIndicator()
                      : SizedBox(
                    height: height,
                    child: ListView.builder(
                        itemCount:
                        1,
                        itemBuilder: (context, index) {
                          return buildText(context,
                              CompRateeCubit.get(context).CompRatee!);
                        }),
                  ),
                ),
              ));
        },
      ),
    );
  }

  Widget buildText(BuildContext context, [CompRateModel? CompRatee]) => Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(
          color: kPrimaryColor,
          width: 3,
        )),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Center(
        child: Container(
          color: Color5,
          child: Column(
            children: [
              ExpansionTile(
                childrenPadding: EdgeInsets.all(16).copyWith(top: 1),
                title: Center(
                  child: Text(
                    CompRatee!.fullName.toString(),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                        fontFamily: 'ElMessiri'),
                  ),
                ),
                children: [
                  Row(
                    children: [
                      Text(
                        'Id:  ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                      Text(
                        CompRatee.id.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Name:  ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                      Text(
                        CompRatee.fullName.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'e-mail:  ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                      Text(
                        CompRatee.email.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'project Idea:  ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                      Text(
                        CompRatee.projectIdea.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'gui:  ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                      Text(
                        CompRatee.gui.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Execution Quality:  ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                      Text(
                        CompRatee.executionQuality.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Content Quality:  ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                      Text(
                        CompRatee.contentQuality.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Complexity:  ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                      Text(
                        CompRatee.complexity.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Project Benefit:  ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                      Text(
                        CompRatee.projectBbenefit.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'language Tools:  ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                      Text(
                        CompRatee.languageTools.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Mastering TheTools:  ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                      Text(
                        CompRatee.masteringTheTools.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Infra structure Used:  ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                      Text(
                        CompRatee.infrastructureUsed.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Notes:  ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                      Text(
                        CompRatee.notes.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Overall Rating:  ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                      Text(
                        CompRatee.overallRating.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontFamily: 'ElMessiri'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    ),
  );
}
