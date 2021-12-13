import 'package:flutter/material.dart';

class AboutMeScreen extends StatefulWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  static const String route = "aboutMeScreen";
  @override
  _AboutMeScreenState createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  late TextEditingController _dobController;
  late TextEditingController _contactNoController;
  late TextEditingController _phoneNoController;
  late TextEditingController _whatsappNoController;
  late TextEditingController _emailController;
  late TextEditingController _skypeNameController;
  late TextEditingController _regTaxNoController;
  late TextEditingController _houseNoController;
  late TextEditingController _streetNameController;
  late TextEditingController _cityController;
  late TextEditingController _countryController;
  late TextEditingController _provinceController;
  late TextEditingController _postalcodeController;

  @override
  void initState() {
    _dobController = TextEditingController(text: "1993-08-24");
    _contactNoController = TextEditingController(text: "+920312 5759336");
    _phoneNoController = TextEditingController(text: "1234567");
    _whatsappNoController = TextEditingController(text: "1234567");
    _emailController = TextEditingController(text: "mkashifali541@gmail.com");
    _skypeNameController = TextEditingController(text: "sk6543");
    _regTaxNoController =
        TextEditingController(text: "124-123-45-113-43-534-5");
    _houseNoController = TextEditingController(text: "21B");
    _streetNameController = TextEditingController(text: "12");
    _cityController = TextEditingController(text: "Luanda");
    _countryController = TextEditingController(text: "Angola");
    _provinceController = TextEditingController(text: "Luanda Province");
    _postalcodeController = TextEditingController(text: "74000");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverAppBar(
            pinned: true,
            centerTitle: true,
            title: Text(
              "About",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Personal Information",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  TextField(
                    controller: _dobController,
                    decoration: const InputDecoration(
                      label: Text("Date of birth"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _contactNoController,
                    decoration: const InputDecoration(
                      label: Text("Contact Number(Secondary)"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _phoneNoController,
                    decoration: const InputDecoration(
                      label: Text("Phone Number (Landline):"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _whatsappNoController,
                    decoration: const InputDecoration(
                      label: Text("Whatsapp Contact Number"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                      label: Text("Email Address"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _skypeNameController,
                    decoration: const InputDecoration(
                      label: Text("Skype ID"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _regTaxNoController,
                    decoration: const InputDecoration(
                      label: Text("Registration Or Tax Number National ID"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _houseNoController,
                    decoration: const InputDecoration(
                      label: Text("House Number"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _streetNameController,
                    decoration: const InputDecoration(
                      label: Text("Street"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _cityController,
                    decoration: const InputDecoration(
                      label: Text("City"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _countryController,
                    decoration: const InputDecoration(
                      label: Text("Country"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _provinceController,
                    decoration: const InputDecoration(
                      label: Text("Province"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _postalcodeController,
                    decoration: const InputDecoration(
                      label: Text("Postal Code"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
