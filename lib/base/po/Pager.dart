class Pager<T>{

  int preIndex;  //上一页
  int pageIndex;  //当前页
  int nextIndex; //下一页
  int pageSize; //每页条数
  int rowsCount; //总页数
  List<T> items; //分页数据

  Pager(this.items,[this.preIndex,this.pageIndex,this.nextIndex,this.pageSize,this.rowsCount]);


}