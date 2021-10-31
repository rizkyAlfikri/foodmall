part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function? onTapBackPressed;
  final Widget? child;
  final Color? backColor;

  GeneralPage(
      {this.title = 'Title',
      this.subTitle = 'subtitle',
      this.onTapBackPressed,
      this.backColor,
      this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
              child: Container(
            color: backColor ?? Colors.white,
          )),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    _Header(
                        onTapBackPressed: onTapBackPressed,
                        title: title,
                        subTitle: subTitle),
                    Container(
                      color: ResColors.backgroundAppBar,
                      height: ResConst.defaultMargin,
                      width: double.infinity,
                    ),
                    child ?? SizedBox(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
    required this.onTapBackPressed,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final Function? onTapBackPressed;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: ResConst.defaultMargin),
      child: Row(
        children: <Widget>[
          (onTapBackPressed != null)
              ? GestureDetector(
                  onTap: () {
                    onTapBackPressed?.call();
                  },
                  child: Container(
                    width: 24,
                    height: 24,
                    margin: EdgeInsets.only(right: 26.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ResDrawable.backArrow))),
                  ),
                )
              : SizedBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: GoogleFonts.poppins(
                    fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Text(
                subTitle,
                style: GoogleFonts.poppins(
                    color: ResColors.colorTextLight,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}
