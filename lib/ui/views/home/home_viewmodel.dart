import 'package:store_app/app/app.bottomsheets.dart';
import 'package:store_app/app/app.dialogs.dart';
import 'package:store_app/app/app.locator.dart';
import 'package:store_app/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:store_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: ksDoYouWantToCheckOut,
    );
  }

  //navigates to Product Details page
  nToProductDetailsPage() {
    _navigationService.navigateTo(Routes.detailsView);
  }

// BottomSheeet
  // void showBottomSheet() {
  //   _bottomSheetService.showCustomSheet(
  //       // variant: BottomSheetType.values,
  //       );
  // }
}
