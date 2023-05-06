import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:store_app/ui/common/app_colors.dart';
import 'package:store_app/ui/common/ui_helpers.dart';
import 'package:store_app/ui/common/app_strings.dart';
import 'package:store_app/ui/shared_widgets/menus_container.dart';
import 'package:store_app/ui/shared_widgets/single_product.dart';
import 'package:store_app/ui/shared_widgets/stack_container.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kcWhite,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: kcWhite.withOpacity(0.7),
        actions: [
          Container(
            margin: const EdgeInsets.only(left: 10, right: 5, top: 25),
            height: 45.0,
            width: 250,
            child: const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 2),
                hintText: 'Search..',
                hintStyle:
                    TextStyle(color: kcGrey, fontWeight: FontWeight.bold),
                prefixIcon: Icon(
                  Icons.search,
                  size: 25.0,
                  color: kcGrey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: kcGrey,
                    width: 15.0,
                  ),
                ),
              ),
            ),
          ),
          const Icon(
            Icons.shopping_bag_outlined,
            size: 25,
            color: kcBlack,
          ),
          horizontalSpaceSmall,
          const Icon(
            Icons.comment,
            size: 25,
            color: kcBlack,
          ),
          horizontalSpaceSmall
        ],
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: 200,
                scrollDirection: Axis.horizontal,
                padEnds: true,
                enableInfiniteScroll: true,
                autoPlayCurve: Curves.linear,
                viewportFraction: 1,
                autoPlay: true),
            items: [
              //Slide 1
              StackContainer(
                imageName: 'assets/images/clothrail2.png',
                hashTitle: ksFashionDay,
                mainTitle: ksPercentOff,
                subTitle: ksDiscoverFashion,
                topValue: 20,
                fontSize: 42,
              ),
              //Slide 2
              StackContainer(
                imageName: 'assets/images/makeup.png',
                hashTitle: ksBeautySale,
                mainTitle: ksDiscoverOurBeautySelection,
                topValue: 40,
                fontSize: 22,
              ),
            ],
          ),
          //Menu List container
          Container(
            color: kcWhite,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Category
                  MenuContainer(
                    iconName: ksCategory,
                    childWidget: const Icon(
                      Icons.widgets_outlined,
                      color: kcGrey,
                    ),
                  ),
                  //Flight
                  MenuContainer(
                    iconName: ksFlight,
                    childWidget: const Icon(
                      Icons.airplanemode_active_outlined,
                      color: kcGrey,
                    ),
                  ),
                  //Bill
                  MenuContainer(
                    iconName: ksBill,
                    childWidget: const Icon(
                      Icons.receipt_long_outlined,
                      color: kcGrey,
                    ),
                  ),
                  // Date Plan
                  MenuContainer(
                    iconName: ksDatePlan,
                    childWidget: const Icon(
                      Icons.language,
                      color: kcGrey,
                    ),
                  ),
                  //Top up
                  MenuContainer(
                    iconName: ksTopUp,
                    childWidget: const Icon(
                      Icons.paid_outlined,
                      color: kcGrey,
                    ),
                  ),
                ]),
          ),
          verticalSpaceSmall,

          // Best Products and see more
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    ksBestSaleProduct,
                    style: TextStyle(
                        color: kcBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    ksSeeMore,
                    style: TextStyle(
                        color: kcGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ]),
          ),
          verticalSpaceSmall,
          // Products part 1
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      viewModel.nToProductDetailsPage();
                    },
                    child: ProductContainer(
                      imageName: 'assets/images/shirt.png',
                      productAmount: ksAmount,
                    ),
                  ),
                ),
                horizontalSpaceMedium,
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      viewModel.nToProductDetailsPage();
                    },
                    child: ProductContainer(
                      imageName: 'assets/images/shirt2.png',
                      productAmount: ksAmount2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Products part 2
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: ProductContainer(
                    imageName: 'assets/images/shirt3.png',
                    productAmount: ksAmount,
                  ),
                ),
                horizontalSpaceMedium,
                Expanded(
                  child: ProductContainer(
                    imageName: 'assets/images/shirt4.png',
                    productAmount: ksAmount2,
                  ),
                ),
              ],
            ),
          ),
          // Products part 3
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: ProductContainer(
                    imageName: 'assets/images/shirt5.png',
                    productAmount: ksAmount,
                  ),
                ),
                horizontalSpaceMedium,
                Expanded(
                  child: ProductContainer(
                    imageName: 'assets/images/shirt6.png',
                    productAmount: ksAmount2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // Bottom Nav Bar
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: kcGrey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: kcWhite,
        onTap: null,

        // ignore: prefer_const_literals_to_create_immutables
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ksHome,
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_num_outlined),
            label: ksVoucer,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: ksWallet,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_applications_outlined),
            label: ksSettings,
          ),
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
