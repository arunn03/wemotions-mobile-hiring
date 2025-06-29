import 'package:socialverse/export.dart';
import 'dart:math' as math;

class SmoothPageIndicatorView extends StatelessWidget {
  const SmoothPageIndicatorView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SmoothPageIndicatorProvider>(
      builder: (_, provider, ___) {
        // Ensure we have valid data before building
        if (provider.totalVerticalPages == -1 ||
            provider.currentVerticalIndex == -1) {
          return SizedBox.shrink();
        }

        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              provider.onReply || provider.currentVerticalIndex == 0
                ? height20 : Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white
                  ),
                  child: Text(
                    "${provider.currentVerticalIndex}",
                    style: const TextStyle(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              height5,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  provider.onReply
                    ? Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                      ),
                      child: Text(
                        provider.currentHorizontalIndex == 0
                          ? "P" : "${provider.currentHorizontalIndex+1}",
                        style: const TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ) : width20,
                  width5,
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow
                    ),
                  ),
                  width5,
                  provider.totalHorizontalPages > 0 && (!provider.onReply || provider.currentHorizontalIndex+1 < provider.totalHorizontalPages)
                    ? Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                      ),
                      child: Text(
                        provider.onReply
                          ? "${provider.totalHorizontalPages-provider.currentHorizontalIndex-1}"
                          : "${provider.totalHorizontalPages}",
                        style: const TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ) : width20,
                ],
              ),
              height5,
              provider.totalVerticalPages > provider.currentVerticalIndex+1
                ? Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white
                  ),
                  child: Text(
                    "${provider.totalVerticalPages-provider.currentVerticalIndex-1}",
                    style: const TextStyle(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ) : height20,
            ],
          ),
        );
      },
    );
  }
}

class Indicator extends StatelessWidget {
  final bool isActive;
  final bool isHorizontal;
  final bool isMoreIndicator;
  final bool makeTransparent;

  const Indicator({
    Key? key,
    required this.isActive,
    required this.isHorizontal,
    this.isMoreIndicator = false,
    this.makeTransparent = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      margin: EdgeInsets.symmetric(
        horizontal: isHorizontal ? 3 : 0,
        vertical: isHorizontal ? 0 : 4,
      ),
      width: isHorizontal
          ? (isMoreIndicator ? 6 : (isActive ? 9 : 8))
          : (isMoreIndicator ? 6 : 8),
      height: isHorizontal
          ? (isMoreIndicator ? 6 : 8)
          : (isMoreIndicator ? 6 : (isActive ? 9 : 8)),
      decoration: BoxDecoration(
        color: makeTransparent
            ? Colors.transparent
            : isActive
                ? Constants.primaryColor
                : (isMoreIndicator
                    ? Constants.lightPrimary.withOpacity(0.3)
                    : Constants.lightPrimary.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(isMoreIndicator ? 3 : 4),
      ),
    );
  }
}


//
//
// class SmoothPageIndicatorView extends StatelessWidget {
//   // final int maxHorizontal;
//   // final int maxVertical;
//   // final VoidCallback onHorizontalIndexChange;
//   // final VoidCallback onVerticalIndexChange;
//   //
//   // DotScrollingView({required this.maxHorizontal, required this.maxVertical, required this.onHorizontalIndexChange,required this.onVerticalIndexChange});
//   @override
//   Widget build(BuildContext context) {
//     double horizontalPadding=8;
//     double verticalPadding=8;
//     return Consumer<SmoothPageIndicatorProvider>(
//       builder: (_, __, ___) {
//         return SizedBox(
//           width: MediaQuery.of(context).size.width,
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   __.hidePlaceHorizontal==0?CircularDot(horizontalPadding: horizontalPadding, verticalPadding: 0, clr:Colors.transparent,onFocus: false,)
//                       :
//                   CircularDot(horizontalPadding: horizontalPadding, verticalPadding: 0, clr: Colors.grey,onFocus: false,),
//
//                   __.hidePlaceHorizontal==1?CircularDot(horizontalPadding: horizontalPadding, verticalPadding: 0, clr:Colors.transparent,onFocus: true, )
//                       :
//                   CircularDot(horizontalPadding: horizontalPadding, verticalPadding: 0, clr: Constants.primaryColor,onFocus: true,),
//
//                   __.hidePlaceHorizontal==2?CircularDot(horizontalPadding: horizontalPadding, verticalPadding: 0, clr:Colors.transparent,onFocus: false, )
//                       :
//                   CircularDot(horizontalPadding: horizontalPadding, verticalPadding: 0, clr: Colors.grey,onFocus: false,),
//
//                 ],
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // height,
//                   __.hidePlaceVertical==0? CircularDot(horizontalPadding: 0, verticalPadding: verticalPadding, clr: Colors.transparent,onFocus: false,)
//                       :
//                   CircularDot(horizontalPadding: 0, verticalPadding: verticalPadding, clr: Colors.grey,onFocus: false,),
//
//
//                   __.hidePlaceVertical==1? CircularDot(horizontalPadding: 0, verticalPadding: verticalPadding, clr: Colors.transparent,onFocus: true,)
//                       :
//                   CircularDot(horizontalPadding: 0, verticalPadding: verticalPadding, clr: Constants.primaryColor,onFocus: false,),
//
//
//                   __.hidePlaceVertical==2? CircularDot(horizontalPadding: 0, verticalPadding: verticalPadding, clr: Colors.transparent,onFocus: false,)
//                       :
//                   CircularDot(horizontalPadding: 0, verticalPadding: verticalPadding, clr: Colors.grey,onFocus: false,)
//
//                 ],
//               ),
//               height2
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
//
