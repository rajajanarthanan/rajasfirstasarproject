import 'package:get_it/get_it.dart';
import 'package:rajas_first_asar_game/app/config.dart';
import 'package:rajas_first_asar_game/core/data/respositories/Asar_Repository.dart';
import 'package:rajas_first_asar_game/features/events_trading/data/models/trading_events_model.dart';
import 'package:rajas_first_asar_game/features/events_trading/domain/entities/trading_event.dart';
import 'package:rajas_first_asar_game/features/events_trading/domain/usecases/asar_tv_usecase.dart';


class FetchEventsUsecase implements AsarTvUsecase{
 final repo  = GetIt.I.get<AsarRepository>(); 
 FetchEventsUsecase();

 Future<List<TradingEventsModel>?> call()async{
  final res = await repo.getApi(endPoint: Config.asarApiV1.endPoints.events,
   fromJson: TradingEventsModel.fromJson);
   return res.fold(
    (failure){
    logger.e(failure);
    return null;
    },
    (success){
    
    return success;
    }
   );
 }
}