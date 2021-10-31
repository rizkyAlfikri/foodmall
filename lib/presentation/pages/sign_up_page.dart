part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Sign Up',
      subTitle: 'Register and eat',
      onTapBackPressed: () {
        Get.back();
      },
      child: Column(
        children: <Widget>[
          Container(
            width: 110,
            height: 110,
            margin: EdgeInsets.only(top: 26),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ResDrawable.photoBorder),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://s4.anilist.co/file/anilistcdn/staff/large/n95185-vZ6nmfBKQgw1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
                ResConst.defaultMargin, 16, ResConst.defaultMargin, 6),
            child: Text('Full Name', style: ResStyle.blackFontStyle2),
          ),
          InputTextWidget(
            emailController: nameController,
            textHint: 'Type your full name',
          ),
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
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 24),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: ResConst.defaultMargin),
            child: Hero(
              tag: 'heroAnimation',
              child: PrimaryButton(
                onTap: () {
                  Get.to(() => AddressPage());
                },
                lable: 'Continue',
                labelColor: Colors.black,
                backgroundColor: ResColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
