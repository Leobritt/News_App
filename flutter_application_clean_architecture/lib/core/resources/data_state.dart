import 'package:dio/dio.dart';

//class to comunicate wih network
abstract class DataState<T> {
  final T? data;
  final DioException? error;
//DioError represents the error that occurred during the operation, allowing proper diagnosis and treatment.
  const DataState({this.data, this.error});
}

//successful response
class DataSucess<T> extends DataState<T> {
  const DataSucess(T data) : super(data: data);
}

//when erro occurs while sending the request or receiving the response
class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException error) : super(error: error);
}
