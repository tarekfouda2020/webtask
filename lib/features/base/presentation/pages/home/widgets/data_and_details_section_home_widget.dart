part of 'imports_home_widgets.dart';
class DataAndDetailsSectionHomeWidget extends StatelessWidget {
  const DataAndDetailsSectionHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text("تم النشر ٢٠/١٠/٢٠٢٣ ٤:٠٤ م",style: AppTextStyle.s13_w500(color:Colors.black54)),
        DetailsRowHomeWidget(
          type: "سيارات",
          title: "القسم",
        ),
        DetailsRowHomeWidget(
          type: "نيسان صني",
          title: "الماركة",
        ),
        DetailsRowHomeWidget(
          type: "حسن",
          title: "حاله المنتج",
        ),
      ],
    );
  }
}
