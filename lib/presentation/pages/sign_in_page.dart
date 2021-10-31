part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Sign In',
      subTitle: 'Find your best ever meal',
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
                ResConst.defaultMargin, 26, ResConst.defaultMargin, 6),
            child: Text('Email Address', style: ResStyle.blackFontStyle2),
          ),
          InputTextWidget(
            emailController: emailController,
            textHint: 'Type your email address here',
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
                ResConst.defaultMargin, 16, ResConst.defaultMargin, 6),
            child: Text('Password', style: ResStyle.blackFontStyle2),
          ),
          InputTextWidget(
            emailController: passwordController,
            textHint: 'Type your password address here',
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInCirc,
            width: double.infinity,
            margin: EdgeInsets.only(top: 24),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: ResConst.defaultMargin),
            child: (isLoading)
                ? SpinKitFadingCircle(
                    size: 45,
                    color: ResColors.primaryColor,
                  )
                : Hero(
                    tag: 'heroAnimation',
                    child: PrimaryButton(
                      onTap: () {},
                      lable: 'Sign in',
                      labelColor: Colors.black,
                      backgroundColor: ResColors.primaryColor,
                    ),
                  ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 24),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: ResConst.defaultMargin),
            child: PrimaryButton(
              onTap: () {
                Get.to(() => SignUpPage());
              },
              lable: 'Create New Account',
              labelColor: Colors.white,
              backgroundColor: ResColors.colorTextLight,
            ),
          ),
        ],
      ),
    );
  }
}
