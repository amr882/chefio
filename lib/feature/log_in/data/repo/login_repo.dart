import 'package:chefio/core/network/api_error_handler.dart';
import 'package:chefio/core/network/api_result.dart';
import 'package:chefio/core/network/api_sevices.dart';
import 'package:chefio/feature/log_in/data/models/login_request_body.dart';
import 'package:chefio/feature/log_in/data/models/login_response.dart';

class LoginRepo {
  final ApiServices _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
