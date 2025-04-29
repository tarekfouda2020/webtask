part of 'imports_home_widgets.dart';

class FlexibleHomeAppBarWidget extends StatelessWidget {
  final Widget title;
  final Widget? leading;
  final List<Widget> actions;
  final bool? showBack;
  final bool? centerTitle;
  final Widget? background;
  final double? expandedHeight;

  const FlexibleHomeAppBarWidget({
    super.key,
    required this.title,
    this.actions = const [],
    this.leading,
    this.showBack = true,
    this.centerTitle,
    this.background,
    this.expandedHeight,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: expandedHeight,
      floating: false,
      pinned: true,
      snap: false,
      centerTitle: centerTitle ?? true,
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      backgroundColor: context.colors.white,
      elevation: 1,
      leadingWidth: 130,
      title: title,
      leading: leading ??
          Visibility(
            visible: showBack ?? true,
            child: IconButton(
              icon: SvgPicture.asset(Res.arrow),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
      actions: actions,
      flexibleSpace: background != null
          ? FlexibleSpaceBar(
              background: background!,
              collapseMode: CollapseMode.parallax,
            )
          : null,
    );
  }
}
