import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:flutter/material.dart';

class FilterCommonScreen extends StatefulWidget {
  String? labelAppText;

  String? labelButton;

  bool? isCheckbox;

  bool? isShowPrefixIcon;

  List<FilterCommonModel>? list;

  Function()? handlerSelectedAll;

  FilterCommonScreen(
      {Key? key,
      this.labelAppText,
      this.isCheckbox,
      this.list,
      this.isShowPrefixIcon,
      this.handlerSelectedAll,
      this.labelButton})
      : super(key: key);

  @override
  _FilterCommonScreen createState() => _FilterCommonScreen();
}

class _FilterCommonScreen extends State<FilterCommonScreen> {
  FilterCommonModel? selectedModel;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    selectedModel = widget.list?.first ?? new FilterCommonModel();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorCustom.pageModelBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.3),
        child: AppBarWidget(
          labelAppBar: widget.labelAppText ?? "",
          isShowIconSort: true,
          isRowAppBar: true,
          buttonHandle: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              (widget.isCheckbox ?? false)
                  ? Row(children: [
                      Expanded(
                          child: GestureDetector(
                        onTap: widget.handlerSelectedAll,
                        child: Text("Selected all",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorCustom.indigoPurple),
                            textAlign: TextAlign.right),
                      ))
                    ])
                  : Container(),
              _buildListFilterCondition(widget.list ?? []),
              Container(
                margin: const EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    Expanded(
                        child: EvaluateButtonWidget(
                      buttonHandle: () {
                        Navigator.of(context).pop();
                      },
                      buttonLabel: widget.labelButton ?? "",
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListFilterCondition(List<FilterCommonModel> listFilter) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: listFilter.length,
        itemBuilder: (context, positiion) {
          return _buildFilterConditionItem(listFilter[positiion]);
        });
  }

  Widget _buildFilterConditionItem(FilterCommonModel item) {
    return (widget.isCheckbox ?? false)
        ? CheckboxListTile(
            title: Text(item.labelItem ?? ""),
            value: item.isSelected ?? false,
            onChanged: (bool? value) {
              item.isSelected = value;
              setState(() {});
            },
            activeColor: ColorCustom.indigoPurple,
            secondary: (item.isShowIcon ?? false)
                ? Image.asset(
                    item.iconUrl ?? IconCustom.iconStar,
                    color: ColorCustom.indigoPurple,
                  )
                : null)
        : Theme(
          data: ThemeData(
            unselectedWidgetColor: ColorCustom.indigoPurple,
            backgroundColor: ColorCustom.indigoPurple
          ),
          child: RadioListTile(
              value: item,
              groupValue: selectedModel,
              onChanged: (FilterCommonModel? currentModel) {
                selectedModel = currentModel;
                setState(() {});
              },
              activeColor: ColorCustom.mediumPurple,
              title: Text(item.labelItem ?? ""),
              controlAffinity: ListTileControlAffinity.trailing,

            ),
        );
  }
}

class FilterCommonModel {
  String? iconUrl;

  String? labelItem;

  bool? isSelected;

  bool? isShowIcon;

  FilterCommonModel(
      {this.iconUrl, this.labelItem, this.isSelected, this.isShowIcon});
}
