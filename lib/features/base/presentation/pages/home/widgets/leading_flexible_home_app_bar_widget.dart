part of 'imports_home_widgets.dart';
class LeadingFlexibleHomeAppBarWidget extends StatelessWidget {
  const LeadingFlexibleHomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18),
      child: Row(
        children: [
          Icon(Icons.warning_amber_outlined,
              size: 25, color: context.colors.grey),
          Gaps.hGap15,
          Icon(Icons.share, size: 25, color: context.colors.grey),
          Gaps.hGap15,
          Icon(Icons.favorite_border_outlined,
              size: 25, color: context.colors.grey)
        ],
      ),
    );
  }
}
