import 'package:agoodplace/src/HomeService.dart';
import 'package:agoodplace/src/model/Post.dart';
import 'package:rxdart/rxdart.dart';

//
class HomeBloc {
  //static bool seedValue = true;
  final BehaviorSubject<bool> _listController =
      BehaviorSubject<bool>.seeded(true);

  Sink<bool> get ListIn => _listController.sink;
  Observable<List<Post>> listOut;

  HomeService service = HomeService();

  HomeBloc() {
    listOut = _listController.stream.asyncMap((d) => service.getPosts());
  }

  dispose() {
    _listController.close();
  }
}
