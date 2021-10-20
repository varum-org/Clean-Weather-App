import '../../data/model/base_data.dart';
import '../../domain/entity/base_entity.dart';

abstract class BaseMapper<R extends BaseData, E extends BaseEntity> {
  E mapToEntity(R? data);

  List<E> mapToListEntity(List<R>? listData) {
    return listData?.map(mapToEntity).toList() ?? List.empty();
  }
}

/// Optional: if need map from entity to remote data
mixin MapperMixin<R extends BaseData, E extends BaseEntity>
    on BaseMapper<R, E> {
  R mapToRemoteData(E entity);

  List<R> mapToListData(List<E> listEntity) {
    return listEntity.map(mapToRemoteData).toList();
  }
}
