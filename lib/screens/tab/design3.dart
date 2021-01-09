import 'package:flutter/material.dart';
import '../../widgets/commonWidgets.dart';
import '../../global/app.dart';
import '../../global/images.dart';
import '../../global/colors.dart';
import '../../utils/screenUtils.dart';

class Design3 extends StatefulWidget {
  @override
  _Design3State createState() => _Design3State();
}

class _Design3State extends State<Design3> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.Design3),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10),
          height: getScrennheight(context, 1.0),
          width: getScreenWidth(context, 1.0),
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.70),
            onPageChanged: (int index) => setState(() => _index = index),
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: _index == index
                          ? ColorPlate.BlueColor
                          : ColorPlate.RedColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Text(
                              _index == 0
                                  ? AppString.FireTxt
                                  : _index == 1
                                      ? AppString.WaterTxt
                                      : _index == 2
                                          ? AppString.PoliceTxt
                                          : AppString.WasteTxt,
                              style: TextStyle(
                                color: ColorPlate.WhiteColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Image.asset(
                              MyImage.WasteImage,
                              fit: BoxFit.fill,
                              height: 30,
                              color: ColorPlate.WhiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                    child: Row(
                      children: [
                        Text(
                          "Date",
                          style: Theme.of(context).textTheme.headline5.copyWith(
                                color: ColorPlate.BlueColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                        ),
                        mySizedBox(myHeight: 0, myWidth: 50),
                        Expanded(
                          flex: 3,
                          child: Text(
                            "Service Name",
                            style:
                                Theme.of(context).textTheme.headline5.copyWith(
                                      color: ColorPlate.BlueColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  vacineName("20/01/2021", "Service", "Service Detail",
                      MyImage.FireImage),
                  vacineName("20/04/2021", "Service", "Service Detail",
                      MyImage.PlumberImage),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Container vacineName(String date, String vaccineName, String detail, image) {
    return Container(
      height: 100,
      child: Row(
        children: [
          Text(date.toString(), style: TextStyle(color: ColorPlate.BlackColor)),
          RotatedBox(
            quarterTurns: 1,
            child: Divider(
              thickness: 2,
              color: ColorPlate.BlueColor,
            ),
          ),
          mySizedBox(myWidth: 10, myHeight: 0),
          Expanded(
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xFFF0F4F7),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      vaccineName ?? "Vaccine Name",
                      style: TextStyle(
                        color: ColorPlate.BlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Divider(color: ColorPlate.BlueColor),
                    ),
                    Text(
                      detail ?? "Detail Of Vaccine",
                      style: TextStyle(
                        color: ColorPlate.BlueColor,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          mySizedBox(myWidth: 10, myHeight: 0),
        ],
      ),
    );
  }
}
