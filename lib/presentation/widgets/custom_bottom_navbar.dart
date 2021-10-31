part of 'widgets.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar(
      {Key? key, required this.selectedIndex, required this.onTap})
      : super(key: key);

  final int selectedIndex;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              onTap.call(0);
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage((selectedIndex == 0)
                          ? ResDrawable.icHome
                          : ResDrawable.icHomeNormal),
                      fit: BoxFit.contain)),
            ),
          ),
          GestureDetector(
            onTap: () {
              onTap.call(1);
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage((selectedIndex == 1)
                          ? ResDrawable.icOrder
                          : ResDrawable.icOrderNormal),
                      fit: BoxFit.contain)),
            ),
          ),
          GestureDetector(
            onTap: () {
              onTap.call(2);
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage((selectedIndex == 2)
                          ? ResDrawable.icProfile
                          : ResDrawable.icProfileNormal),
                      fit: BoxFit.contain)),
            ),
          ),
        ],
      ),
    );
  }
}
