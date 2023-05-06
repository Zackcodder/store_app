import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:store_app/ui/common/app_colors.dart';
import 'package:store_app/ui/common/app_strings.dart';
import 'package:store_app/ui/common/ui_helpers.dart';

import 'details_viewmodel.dart';

class DetailsView extends StackedView<DetailsViewModel> {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: kcWhite,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: kcWhite,
          leading: IconButton(
            onPressed: () {
              viewModel.nToHomePage();
            },
            icon: const Icon(
              color: kcBlack,
              Icons.arrow_back_ios,
            ),
          ),
          actions: const [
            Icon(
              Icons.favorite,
              size: 25,
              color: kcRed,
            ),
            horizontalSpaceSmall,
            Icon(
              Icons.share_outlined,
              size: 25,
              color: kcBlack,
            ),
            horizontalSpaceSmall,
            Icon(
              Icons.shopping_bag_outlined,
              size: 25,
              color: kcBlack,
            ),
            horizontalSpaceSmall
          ],
        ),
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Product Image Display
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: kcGrey,
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        'assets/images/shirt5.png',
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/shirt5.png',
                            width: 45,
                            height: 45,
                            fit: BoxFit.fitWidth,
                          ),
                          verticalSpaceSmall,
                          Image.asset(
                            'assets/images/shirt.png',
                            width: 45,
                            height: 45,
                            fit: BoxFit.fitWidth,
                          ),
                          verticalSpaceSmall,
                          Image.asset(
                            'assets/images/shirt2.png',
                            width: 45,
                            height: 45,
                            fit: BoxFit.fitWidth,
                          ),
                          verticalSpaceSmall,
                          Image.asset(
                            'assets/images/shirt6.png',
                            width: 45,
                            height: 45,
                            fit: BoxFit.fitWidth,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpaceSmall,
              //Store Icon and Store Name
              Row(
                children: const [
                  Icon(
                    Icons.storefront_outlined,
                    color: kcGrey,
                  ),
                  horizontalSpaceSmall,
                  Text(
                    'takobaju.id',
                    style: TextStyle(
                      color: kcGrey,
                      // fontSize: 20,
                    ),
                  )
                ],
              ),
              verticalSpaceSmall,
              // product Title
              const Text(
                ksEssentialMenShort2,
                style: TextStyle(
                  color: kcBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpaceMedium,

              /// Rating and number or reviews and comments
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: kcAmber,
                  ),
                  horizontalSpaceSmall,
                  Text(
                    '4.9 Ratings . 2.3k+Reviews  . 2.9k + Sold',
                    style: TextStyle(
                      color: kcGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              verticalSpaceMedium,

              /// About item and Review Header
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: const [
                    Text(
                      'About Item',
                      style: TextStyle(
                        color: kcGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    horizontalSpaceLarge,
                    Text(
                      'Reviews',
                      style: TextStyle(
                        color: kcGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),

              const Divider(
                color: kcGrey,
              ),
              Row(
                children: const [
                  Text(
                    'Brand:  ',
                    style: TextStyle(
                      color: kcGrey,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'ChArmKpR  ',
                    style: TextStyle(
                      color: kcBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  horizontalSpaceSmall,
                  Text(
                    'Color:  ',
                    style: TextStyle(
                      color: kcGrey,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Aprikot  ',
                    style: TextStyle(
                      color: kcBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              verticalSpaceMassive
            ],
          ),
        ),
        // Bottom Nav Bar
        bottomSheet: BottomSheet(
            enableDrag: false,
            elevation: 9.0,
            onClosing: () {},
            builder: (
              BuildContext context,
            ) {
              return Container(
                padding: const EdgeInsets.all(10),
                height: 100,
                color: kcWhite,
                child: Row(
                  children: [
                    // Total price of product
                    Column(
                      children: const [
                        verticalSpaceMedium,
                        Text(
                          'Total Price',
                          style: TextStyle(
                            color: kcGrey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        verticalSpaceSmall,
                        Text(
                          ksAmount2,
                          style: TextStyle(
                            color: kcGrey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    horizontalSpaceLarge,
                    horizontalSpaceLarge,

                    //Add to cart button
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      height: 40,
                      width: 60,
                      decoration: const BoxDecoration(
                          color: kcGrey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          )),
                      child: Center(
                        child: Row(
                          children: const [
                            horizontalSpaceSmall,
                            Icon(Icons.shopping_bag_outlined, color: kcWhite),
                            horizontalSpaceSmall,
                            Text('1')
                          ],
                        ),
                      ),
                    ),

                    //BuyButton
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      height: 40,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: kcDarkGreyColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          )),
                      child: const Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            color: kcWhite,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }));
  }

  @override
  DetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DetailsViewModel();
}
