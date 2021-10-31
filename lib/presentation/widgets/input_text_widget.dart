part of 'widgets.dart';

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({
    Key? key,
    required this.emailController,
    required this.textHint,
  }) : super(key: key);

  final TextEditingController emailController;
  final String textHint;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: ResConst.defaultMargin),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black),
      ),
      child: TextField(
        controller: emailController,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: ResStyle.greyFontStyle,
            hintText: textHint),
      ),
    );
  }
}
