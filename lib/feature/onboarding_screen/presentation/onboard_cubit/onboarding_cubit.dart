import 'package:dalel/core/constant/images.dart';
import 'package:dalel/feature/onboarding_screen/presentation/widget/custom_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState(currentIndex: 0));
  List<ModelView> modelView = [
    ModelView(
      images: AppImages.onBoard1,
      subTitle:
          "Using our app’s history libraries you can find many historical periods ",
      title: "Explore The history with Dalel in a smart way",
    ),
    ModelView(
      images: AppImages.onBoard2,
      subTitle: "A big variety of ancient places from all over the world",
      title: "From every place on earth with Dalel in a smart way",
    ),
    ModelView(
      images: AppImages.onBoard3,
      subTitle:
          "AI provide recommendations and helps you to continue the search journey ",
      title: "Using modern AI technology for better user experience",
    ),
  ];
  void setcuruentIndex(index) {
    emit(OnboardingState(currentIndex: index));
  }
}
