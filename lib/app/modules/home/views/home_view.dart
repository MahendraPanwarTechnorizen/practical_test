import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../common/common_widgets.dart';
import '../../../data/constants/image_constants.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.px),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.px),
                Text(
                  StringConstants.welcomeToFertileMate,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontSize: 18.px, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 12.px),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(12.px),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.px),
                            child: Image.asset(
                              ImageConstants.imageEmailCheck,
                              height: 60.px,
                              width: 60.px,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 10.px),
                          Text(
                            StringConstants.boostYourFertilityToday,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    fontSize: 20.px,
                                    color: Theme.of(context).primaryColor),
                          ),
                          SizedBox(height: 2.px),
                          Text(
                            StringConstants.comprehensiveHealthAssessments,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                  fontSize: 14.px,
                                ),
                          ),
                          SizedBox(height: 2.px),
                          Text(
                            StringConstants.aIDrivenFertilityAnalysis,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontSize: 10.px),
                          ),
                          SizedBox(height: 20.px),
                          CommonWidgets.commonElevatedButton(
                            onPressed: () =>
                                controller.clickOnGetStartedButton(),
                            child: Text(
                              StringConstants.getStarted,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12.px),
                Text(
                  StringConstants.yourReproductiveHealthJourney,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontSize: 14.px,
                      ),
                ),
                SizedBox(height: 12.px),
                ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => ListTile(
                      onTap: () => controller.clickOnListTile(index: index),
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(20.px),
                            child: Image.asset(
                              controller.listOfReproductiveImages[index],
                              height: 40.px,
                              width: 40.px,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            controller.listOfReproductive[index],
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                  fontSize: 14.px,
                                ),
                          ),
                        ),
                    itemCount: controller.listOfReproductive.length),
                SizedBox(height: 12.px),
                Text(
                  StringConstants.support,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontSize: 14.px,
                      ),
                ),
                SizedBox(height: 12.px),
                Card(
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Image.asset(
                            ImageConstants.imageDr,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 16.px,
                                    width: 16.px,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.px),
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onError),
                                  ),
                                  SizedBox(width: 8.px),
                                  Text(
                                    StringConstants.availableNow,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium
                                        ?.copyWith(fontSize: 18.px),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.px),
                              CommonWidgets.commonElevatedButton(
                                wantContentSizeButton: true,
                                onPressed: () =>
                                    controller.clickOnGetStartedButton(),
                                child: Text(
                                  StringConstants.chatNow,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12.px),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
