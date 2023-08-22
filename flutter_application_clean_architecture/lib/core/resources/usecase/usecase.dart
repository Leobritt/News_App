//generic types
abstract class UseCase<Type, Params>{
  //all use cases have a method named call   
  Future<Type> call({Params params});
}