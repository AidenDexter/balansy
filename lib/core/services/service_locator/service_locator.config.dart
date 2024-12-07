// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:balansy/core/router/app_router.dart' as _i785;
import 'package:balansy/core/services/database_service/database_service.dart'
    as _i17;
import 'package:balansy/core/services/transaction_service/i_transaction_service.dart'
    as _i1040;
import 'package:balansy/core/services/transaction_service/transaction_service.dart'
    as _i1033;
import 'package:balansy/feature/transactions/data/data_source/categories_local_db.dart'
    as _i33;
import 'package:balansy/feature/transactions/data/repository/categories_repository.dart'
    as _i762;
import 'package:balansy/feature/transactions/data/repository/transaction_repository.dart'
    as _i70;
import 'package:balansy/feature/transactions/domain/repository/i_add_transaction_repository.dart'
    as _i241;
import 'package:balansy/feature/transactions/domain/repository/i_category_repository.dart'
    as _i406;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i785.AppRouter>(() => _i785.AppRouter());
    gh.lazySingleton<_i17.DatabaseService>(() => _i17.DatabaseService());
    gh.factory<_i33.ICategoriesLocalDB>(
        () => _i33.CategoriesLocalDB(gh<_i17.DatabaseService>()));
    gh.lazySingleton<_i1040.ITransactionService>(
        () => _i1033.TransactionService(gh<_i17.DatabaseService>()));
    await gh.singletonAsync<_i406.ICategoriesRepository>(
      () => _i762.CategoriesRepository.init(gh<_i33.ICategoriesLocalDB>()),
      preResolve: true,
    );
    gh.lazySingleton<_i241.INewTransactionRepository>(
        () => _i70.NewTransactionRepository(gh<_i1040.ITransactionService>()));
    return this;
  }
}
