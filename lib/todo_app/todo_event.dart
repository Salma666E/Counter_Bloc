/// Event being processed by [TodoBloc].
abstract class TodoEvent {}

/// Notifies bloc to get list state.
class TodoFetchPressed extends TodoEvent {}

/// Notifies bloc to decrement state.
class TodoDeletePressed extends TodoEvent {}
