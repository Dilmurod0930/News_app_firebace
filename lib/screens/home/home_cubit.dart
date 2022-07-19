import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_firbace/screens/home/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeInitial());
}
