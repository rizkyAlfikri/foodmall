part of 'widgets.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    Key? key,
    required this.lable,
    required this.labelColor,
    required this.backgroundColor,
    required this.onTap,
  }) : super(key: key);

  final String lable;
  final Function onTap;
  final Color labelColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap.call();
      },
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        lable,
        style:
            GoogleFonts.poppins(color: labelColor, fontWeight: FontWeight.w500),
      ),
    );
  }
}
