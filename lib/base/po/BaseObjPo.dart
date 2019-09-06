import 'BasePo.dart';
class BaseObjPo<T> extends BasePo{
  T data;
  BaseObjPo(this.data,int code, String rinfo) : super(code, rinfo);

}