import 'package:chefio/core/network/api_constants.dart';
import 'package:chefio/feature/log_in/data/models/login_request_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_sevices.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;

  @POST(ApiConstants.loginUrl)
  Future<String> login(@Body() LoginRequestBody loginRequestBody);
}
