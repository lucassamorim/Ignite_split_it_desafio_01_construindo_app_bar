import 'package:app_divisao/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculationButtonWidget extends StatelessWidget {
  final String image;
  final String text;
  final String price;
  final bool receive;

  const CalculationButtonWidget(
      {Key? key,
      required this.image,
      required this.text,
      required this.price,
      this.receive = true})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(
            color: Color(0xFFDCE0E5),
          ),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: receive ? Color(0xFFe9f8f2) : Color(0xFFfdecef),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(10),
            child: Image.asset(
              image,
              width: 32,
            ),
          ),
          SizedBox(height: 40),
          Text(
            "A receber",
            style: AppTheme.textStyles.textAppBar,
          ),
          SizedBox(height: 5),
          Text(
            "R\$ $price",
            style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: receive
                    ? AppTheme.colors.backgroundSecondary
                    : AppTheme.colors.error),
          )
        ],
      ),
    );
  }
}
