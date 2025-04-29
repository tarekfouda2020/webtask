part of 'imports_home_widgets.dart';

class ContainersActionsAppBarHomeWidget extends StatelessWidget {
  final IconData? icon;
  const ContainersActionsAppBarHomeWidget({super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0,0.20),
              blurRadius: 15,
              spreadRadius: 0,
              offset: Offset(
                0,
                5,
              ),
            ),
          ],
      ),
      child: Icon(icon,size:20,color:context.colors.grey),
    );
  }
}
