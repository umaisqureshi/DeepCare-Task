// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/data.dart' as _i433;
import '../data/repository/home_repo_impl.dart' as _i987;
import '../domain/usecase/get_random_number_case.dart' as _i320;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i433.HomeRepo>(() => _i987.HomeRepoImpl());
    gh.factory<_i320.GetRandomNumberUseCase>(
        () => _i320.GetRandomNumberUseCase(homeRepo: gh<_i433.HomeRepo>()));
    return this;
  }
}
