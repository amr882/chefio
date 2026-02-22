import 'package:chefio/core/network/api_result.dart';
import 'package:chefio/feature/log_in/data/models/login_request_body.dart';
import 'package:chefio/feature/log_in/data/repo/login_repo.dart';
import 'package:chefio/feature/log_in/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());
  void emitLoading(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final respons = await _loginRepo.login(loginRequestBody);
    respons.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(
          LoginState.error(error: error.apiErrorModel.message ?? "wamp wamp"),
        );
      },
    );
  }
}
