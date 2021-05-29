import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventButtonWidget extends StatelessWidget {
  final bool receive;
  final String title;
  final String date;
  final int frends;
  final double price;
  const EventButtonWidget({
    Key? key,
    this.receive = true,
    required this.title,
    required this.date,
    required this.frends,
    required this.price,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 0, bottom: 16),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: receive ? Color(0xFFe9f8f2) : Color(0xFFfdecef),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(10),
            child: Image.asset(
              receive
                  ? "assets/images/dollar-send-left.png"
                  : "assets/images/dollar-send-right.png",
              width: 32,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(bottom: 10, top: 12),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Color(0xFFCCCCCC),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          date,
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF666666),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "R\$ $price",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF666666),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "$frends amigo",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA4B2AE),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
