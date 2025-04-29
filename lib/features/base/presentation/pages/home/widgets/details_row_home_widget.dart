part of 'imports_home_widgets.dart';

class DetailsRowHomeWidget extends StatelessWidget {
  final String? title;
  final String? type;

  const DetailsRowHomeWidget({super.key, this.title, this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:15),
          child: Row(
            children: [
              Text(type ?? "", style: buildAppTextStyleDetailsRow(context)),
              Spacer(),
              Text(title ?? "", style: buildAppTextStyleDetailsRow(context))
            ],
          ),
        ),
        Gaps.hLine
      ],
    );
  }

  AppTextStyle buildAppTextStyleDetailsRow(BuildContext context) =>
      AppTextStyle.s16_w500(color: Colors.grey.shade500);
}
