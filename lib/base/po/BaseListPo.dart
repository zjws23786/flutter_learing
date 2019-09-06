import 'BasePo.dart';
import 'Pager.dart';

class BaseListPo<T> extends BasePo{
  Pager<T> data;

  BaseListPo(this.data,int code, String rinfo) : super(code, rinfo);

}