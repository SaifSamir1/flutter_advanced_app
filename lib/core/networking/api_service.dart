import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/login/data/models/login_request_to_api_body.dart';
import '../../features/login/data/models/login_response_from_api.dart';
import '../../features/signup/data/models/sign_up_request_to_api.dart';
import '../../features/signup/data/models/sign_up_response_from_api.dart';
import 'api_constant.dart';


part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
      @Body() LoginRequestBody loginRequestBody,
      );

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
      @Body() SignupRequestBody signupRequestBody,
      );
}