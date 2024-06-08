import 'package:equifax_movie_db/client/mdb_client.dart';
import 'package:equifax_movie_db/models/results_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_state.dart';
part 'details_cubit.freezed.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final MDBClient? client;
  DetailsCubit({this.client}) : super(DetailsState.loading());

  Future<void> loadDetails({required String? id}) async {
    if (id != null) {
      emit(DetailsState.loading());
      final result = await client?.getDetails(id);
      if (result != null) {
        emit(DetailsState(result: result.data, isLoading: false));
      }
    }
  }
}
