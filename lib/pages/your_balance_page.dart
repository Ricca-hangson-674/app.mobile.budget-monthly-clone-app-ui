import 'package:budget_monthly_clone/theme/colors.dart';
import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';

class YourBalancePage extends StatefulWidget {
  const YourBalancePage({Key? key}) : super(key: key);

  @override
  State<YourBalancePage> createState() => _YourBalancePageState();
}

class _YourBalancePageState extends State<YourBalancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar:
          PreferredSize(child: getAppBar(), preferredSize: Size.fromHeight(60)),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: bgColor,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: black,
            size: 22,
          )),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 15),
          child: Text(
            "Set budget",
            style: TextStyle(
                color: primary, fontSize: 16, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  "Your balance is \$1,752",
                  style: TextStyle(
                      fontSize: 20, color: black, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "By this time last month, you spent\n slightly higher (\$2,450)",
                  style: TextStyle(fontSize: 14, height: 1.6),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(color: primary),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: black.withOpacity(0.01),
                            spreadRadius: 10,
                            blurRadius: 10,
                            // changes position of shadow
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.redAccent),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Spent",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: black.withOpacity(0.5)),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "\$3,460",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Flexible(
                            child: Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: primary),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Earned",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: black.withOpacity(0.5)),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "\$1,890",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          getTopMechants(),
          SizedBox(
            height: 20,
          ),
          getTopCategories()
        ],
      ),
    );
  }

  Widget getTopMechants() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top merchant",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: black.withOpacity(0.01),
                                      spreadRadius: 10,
                                      blurRadius: 10,
                                      // changes position of shadow
                                    ),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                    "https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1200px-Starbucks_Corporation_Logo_2011.svg.png"),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Starbucks",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "4 Transactions",
                                  style: TextStyle(
                                      color: black.withOpacity(0.5),
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "\$254",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Divider()
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }

  Widget getTopCategories() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top category",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(5, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    width: 150,
                    height: 220,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: black.withOpacity(0.01),
                            spreadRadius: 10,
                            blurRadius: 10,
                            // changes position of shadow
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 20, bottom: 10),
                      child: Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                // color: primary,
                                shape: BoxShape.circle,
                                border: Border.all(width: 5, color: primary)),
                          ),
                          SizedBox(height: 15,),
                          Text("Eating out",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                          ),),
                          SizedBox(height: 5,),
                            Text("\$659",style: TextStyle(
                            fontSize: 16,
                            color: black.withOpacity(0.5),
                            fontWeight: FontWeight.w600
                          ),),
                          SizedBox(height: 15,),
                          Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              color: bgColor,
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: Center(
                              child: Text("on track",style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: black.withOpacity(0.7)
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}