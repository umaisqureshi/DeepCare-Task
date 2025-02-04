import 'package:deep_care_case_study/core/core.dart';

typedef OnSuccess<T> = void Function(T data);
typedef OnError = void Function(Exception error);

sealed class UseCase {
  const UseCase();
}

class UseCaseResult<E> {
  final OnSuccess<E>? onSuccess;
  final OnError? onError;
  final VoidCallback? onFinished;

  UseCaseResult({this.onSuccess, this.onError, this.onFinished});
}

abstract class SupplierUseCase<E> implements UseCase {
  const SupplierUseCase();

  Future<E> task();

  Future perform(UseCaseResult<E> result) async {
    try {
      E data = await task();
      result.onSuccess?.call(data);
    } on Exception catch (exception) {
      result.onError?.call(exception);
    } catch (e) {
      result.onError?.call(Exception(e.toString()));
    }
    result.onFinished?.call();
  }
}
