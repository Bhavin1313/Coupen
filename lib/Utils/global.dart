import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Global {
  static String? imagePath = "";
  static ImagePicker picker = ImagePicker();

  static bool show = true;

  static String? signup_email;
  static String? signup_pass;
  static String? signup_fname;
  static String? signup_lname;
  static TextEditingController signup_email_c = TextEditingController();
  static TextEditingController signup_pass_c = TextEditingController();
  static TextEditingController signup_fname_c = TextEditingController();
  static TextEditingController signup_lname_c = TextEditingController();

  static String? email;
  static String? pass;
  static TextEditingController email_c = TextEditingController();
  static TextEditingController pass_c = TextEditingController();

  static int initialIndex = 0;

  static int item = 1;
  static int TotalPrice = 0;

  static Color appColor = Color(0xff202140);
  static Color textColor = Color(0xfffeae42);

  static String name = "";

  static String number = "";
  static String address1 = "";
  static String address2 = "";
  static String lendmark = "";
  static String pincode = "";
  static String city = "";
  static String state = "";

  static TextStyle size30 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Color(0xff0B9EEC),
  );
  static TextStyle size30b = GoogleFonts.getFont(
    'Poppins',
    fontSize: 30,
    fontWeight: FontWeight.w800,
    color: Color(0xff000000),
  );

  static TextStyle size22 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: Color(0xff000000),
  );

  static TextStyle size22g = GoogleFonts.getFont(
    'Poppins',
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: Color(0xff000000).withOpacity(.6),
  );

  static TextStyle size10 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 10,
    fontWeight: FontWeight.w700,
    color: Color(0xff000000),
  );

  static TextStyle size12 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0xffD6A11C),
  );

  static TextStyle size1206b = GoogleFonts.getFont(
    'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0xff000000).withOpacity(.6),
  );

  static TextStyle size14g = GoogleFonts.getFont(
    'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color(0xff000000).withOpacity(.6),
  );

  static TextStyle size14u = GoogleFonts.getFont(
    'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color(0xff000000),
    decoration: TextDecoration.underline,
  );

  static TextStyle size14b = GoogleFonts.getFont(
    'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color(0xff37B8FB),
  );

  static TextStyle size14 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color(0xff000000),
  );

  static TextStyle size16 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xff000000),
  );

  static TextStyle size1608 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xff000000).withOpacity(.8),
  );

  static TextStyle size1606 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xff000000).withOpacity(.6),
  );

  static TextStyle size1608u = GoogleFonts.getFont(
    'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xff000000).withOpacity(.8),
    decoration: TextDecoration.underline,
  );

  static TextStyle size18b = GoogleFonts.getFont(
    'Poppins',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Color(0xff000000),
  );

  static TextStyle size18 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Color(0xffFFFFFF),
  );

  static TextStyle size18s = GoogleFonts.getFont(
    'Poppins',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Color(0xff0B9EEC),
  );

  static TextStyle size18r = GoogleFonts.getFont(
    'Poppins',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Color(0xffFF0000),
  );

  static TextStyle size18blue = GoogleFonts.getFont(
    'Poppins',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Color(0xff0B9EEC),
  );

  static TextStyle size20 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Color(0xff000000),
  );

  static TextStyle size20b = GoogleFonts.getFont(
    'Poppins',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Color(0xff0B9EEC),
  );
}

List<Map<String, dynamic>> status = [
  {
    "name": "Bhavin",
    "image": "lib/Assets/175b862c2d6ba3dd20dafa06a5ec5897.jpg",
    "time": "19 minutes ago",
  },
  {
    "name": "Chit",
    "image": "lib/Assets/Best-WhatsApp-Status-Captions-683x1024.webp",
    "time": "35 minutes ago",
  },
  {
    "name": "Vaibhav",
    "image": "lib/Assets/c5cbc-very-sad-status-1.webp",
    "time": "55 minutes ago",
  },
  {
    "name": "Abhi",
    "image": "lib/Assets/ce7405d24eed479b37beadc44c93bb32.jpg",
    "time": "8:20 am",
  },
  {
    "name": "Darshil",
    "image": "lib/Assets/Dont-tell-people-your-dreams.-Show-them..webp",
    "time": "9:50 am",
  },
  {
    "name": "Kevin Mali",
    "image": "lib/Assets/download.jpg",
    "time": "11:45 am",
  },
  {
    "name": "Bhargav",
    "image": "lib/Assets/Quote-Whatsapp-Status-Template.webp",
    "time": "1:30 pm",
  },
  {
    "name": "Chirag",
    "image": "lib/Assets/Short-Whatsapp-Status-About-Life-In-English.jpg",
    "time": "4:50 pm",
  },
  {
    "name": "Manthan",
    "image": "lib/Assets/whatsapp-status-in-hindi.jpg",
    "time": "6:31 pm",
  },
  {
    "name": "Hitrndr",
    "image": "lib/Assets/Whatsapp-Status-in-Hindi-Image.webp",
    "time": "9:59 pm",
  },
  {
    "name": "Vasu",
    "image": "lib/Assets/images.jpg",
    "time": "11:40 pm",
  },
];
