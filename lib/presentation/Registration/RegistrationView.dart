import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/assetsManager.dart';
import 'package:movies_app/core/routesManager.dart';
import 'package:movies_app/widgets/CustomTextFormField.dart';
import 'package:movies_app/core/extensions/extensions.dart';

class Registerview extends StatefulWidget {
  const Registerview({super.key});

  @override
  State<Registerview> createState() => _RegisterviewState();
}

class _RegisterviewState extends State<Registerview> {
  int _selectedAvatarIndex=0;

  List<String>ProfilePics=
  [
    AssetsManager.Profile1,
    AssetsManager.Profile2,
    AssetsManager.Profile3,
    AssetsManager.Profile4,
    AssetsManager.Profile5,
    AssetsManager.Profile6,
    AssetsManager.Profile7,
    AssetsManager.Profile8,
    AssetsManager.Profile9,

  ];
  bool securePassword = true;
  bool secureRePassword = true;
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  late TextEditingController emailController;
  late TextEditingController repassController;
  late TextEditingController nameController;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    repassController = TextEditingController();
    nameController = TextEditingController();
    phoneController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    repassController.dispose();
    nameController.dispose();
    phoneController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 130.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: ProfilePics.length,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              separatorBuilder: (context, index) => SizedBox(width: 10.w),
              itemBuilder: (context, index) {
                final isSelected = _selectedAvatarIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedAvatarIndex = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: isSelected
                          ? Border.all(color: Colors.yellowAccent, width: 3)
                          : null,
                    ),
                    child: CircleAvatar(
                      radius: isSelected ? 55.r : 50.r,
                      backgroundImage: AssetImage(ProfilePics[index]),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height:30.h),
          Center(child: Text("Avatar",style: Theme.of(context).textTheme.bodySmall,)),
          SizedBox(height:16.h),

          CustomTextFormField(
            controller: nameController,
              validation: (input) {
                if (input == null || input.trim().isEmpty) {
                  return "Please, enter your name";
                }
                return null;
              },
              keyboardType: TextInputType.name,
              prefixIcon: Icons.person),
          SizedBox(
            height: 30.h,
          ),
          CustomTextFormField(
              validation: (input) {
                if (input == null || input.trim().isEmpty) {
                  return "Please, enter your e-mail";
                }
                if (!input.isValidEmail) {
                  return "please enter a valid e-mail";
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              prefixIcon: Icons.email),
          SizedBox(
            height: 30.h,
          ),
          CustomTextFormField(
            validation: (input) {
              if (input == null || input.trim().isEmpty) {
                return "Please, enter password";
              }
              if (input.length < 6) {
                return "Sorry, password at least 6 characters";
              }
              return null;
            },
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            prefixIcon: Icons.lock,
            suffixIcon: securePassword
                ? Icons.visibility_off
                : Icons.visibility,
            isSecure: securePassword,
            onPress: _onPasswordIconClicked,
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomTextFormField(
            controller: repassController,
            validation: (input) {
              if (input == null || input.trim().isEmpty) {
                return "Please, enter re-password";
              }
              if (input != passwordController.text) {
                return "password not match";
              }
              return null;
            },
            keyboardType: TextInputType.visiblePassword,

            prefixIcon: Icons.lock,
            suffixIcon: secureRePassword
                ? Icons.visibility_off
                : Icons.visibility,
            isSecure: secureRePassword,
            onPress: _onRePasswordIconClicked,
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomTextFormField(
            controller: phoneController,
            validation: (input)
            {
              if (input == null || input.trim().isEmpty) {
              return "Please, enter re-password";

            }
              if (input.length < 12) {
                return "Sorry, phone number at least 12 characters";
              }

            },
            prefixIcon: Icons.phone,
          ),
          SizedBox(height: 30.h,),
          ElevatedButton(onPressed: (){
            _register();
          },child:Text("Create account")), Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("already have an account?",style: Theme.of(context).textTheme.bodySmall,),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, RoutesManager.login);
              }, child: Text("login"))
            ],
          )


        ],
      )
      ,

    );
  }
  void _onPasswordIconClicked() {
    setState(() {
      securePassword = !securePassword;
    });
  }

  void _onRePasswordIconClicked() {
    setState(() {
      secureRePassword = !secureRePassword;
    });
  }
  

  void _register() {
    if (!(formkey.currentState!.validate())) return;
  }}


