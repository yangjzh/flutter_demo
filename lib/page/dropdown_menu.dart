import 'package:flutter/material.dart';

//下拉框
class DropDownStateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DropDownState();
}

class DropDownState extends State<DropDownStateWidget> {
  List<DropdownMenuItem> generateItemList() {
    List<DropdownMenuItem> items = List();
    DropdownMenuItem item1 = DropdownMenuItem(value: '张三', child: Text('张三'));
    DropdownMenuItem item2 = DropdownMenuItem(value: '李四', child: Text('李四'));
    DropdownMenuItem item3 = DropdownMenuItem(value: '王二', child: Text('王二'));
    DropdownMenuItem item4 = DropdownMenuItem(value: '麻子', child: Text('麻子'));
    items.add(item1);
    items.add(item2);
    items.add(item3);
    items.add(item4);
    return items;
  }

  //下拉菜单item点击之后获取到的值
  var selectItemValue;
  /*DropDownState(){
    selectItemValue=getDropdownMenuItem()[0].value;
  }*/
  @override
  Widget build(BuildContext context) {
    //DropdownButtonHideUnderline：下拉菜单展示的内容处没有下划线
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        hint: Text('下拉菜单选择一个人名'),
        //设置这个value之后,选中对应位置的item，
        //再次呼出下拉菜单，会自动定位item位置在当前按钮显示的位置处

        value: selectItemValue,
        items: generateItemList(),
        onChanged: (T) {
          setState(() {
            selectItemValue = T;
          });
        },
      ),
    );
  }
}
