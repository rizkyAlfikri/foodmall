part of 'pages.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController houseNumberController = TextEditingController();
  String city = 'Bandung';

  @override
  void dispose() {
    addressController.dispose();
    phoneController.dispose();
    houseNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Address',
      subTitle: 'Make sure it\'s valid',
      onTapBackPressed: () {
        Get.back();
      },
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
                ResConst.defaultMargin, 26, ResConst.defaultMargin, 6),
            child: Text('Phone No.', style: ResStyle.blackFontStyle2),
          ),
          InputTextWidget(
            emailController: phoneController,
            textHint: 'Type your phone number',
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
                ResConst.defaultMargin, 26, ResConst.defaultMargin, 6),
            child: Text('Address', style: ResStyle.blackFontStyle2),
          ),
          InputTextWidget(
            emailController: addressController,
            textHint: 'Type your address',
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
                ResConst.defaultMargin, 16, ResConst.defaultMargin, 6),
            child: Text('House No.', style: ResStyle.blackFontStyle2),
          ),
          InputTextWidget(
            emailController: houseNumberController,
            textHint: 'Type your house number',
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
                ResConst.defaultMargin, 16, ResConst.defaultMargin, 6),
            child: Text('City', style: ResStyle.blackFontStyle2),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: ResConst.defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: DropdownButton<String>(
              isExpanded: true,
              underline: SizedBox(),
              value: city,
              onChanged: (String? item) {
                setState(() {
                  city = item ?? '';
                });
              },
              items: [
                DropdownMenuItem(
                  value: 'Bandung',
                  child: Text('Bandung', style: ResStyle.blackFontStyle3),
                ),
                DropdownMenuItem(
                  value: 'Jakarta',
                  child: Text('Jakarta', style: ResStyle.blackFontStyle3),
                ),
                DropdownMenuItem(
                  value: 'Surabaya',
                  child: Text('Surabaya', style: ResStyle.blackFontStyle3),
                ),
                DropdownMenuItem(
                  value: 'Semarang',
                  child: Text('Semarang', style: ResStyle.blackFontStyle3),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 24),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: ResConst.defaultMargin),
            child: Hero(
              tag: 'heroAnimation',
              child: PrimaryButton(
                onTap: () {},
                lable: 'Sign Up Now',
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
