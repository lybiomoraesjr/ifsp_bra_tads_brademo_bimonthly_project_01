import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/route_names.dart';
import 'package:flutter_application_1/constants/app_assets.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/constants/app_font_sizes.dart';
import 'package:flutter_application_1/constants/spacing.dart';
import 'package:flutter_application_1/shared/models/user_model.dart';

//widgets
import '../../../shared/widgets/inputs/input.dart';
import '../../../shared/widgets/navigation/drawer/app_drawer.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: AppDrawer(currentPage: "Account"),
      body: Stack(
        children: [
          const _BackgroundImage(),
          SafeArea(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: AppSpacing.md,
                    left: AppSpacing.lg,
                    right: AppSpacing.lg,
                    bottom: AppSpacing.xl,
                  ),
                  child: _SignUpCard(
                    nameController: nameController,
                    emailController: emailController,
                    passwordController: passwordController,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.backgroundSignUp),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _SignUpCard extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const _SignUpCard({
    required this.nameController,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.lg - AppSpacing.sm),
      ),
      child: Column(
        children: [
          const _SocialLoginSection(),
          _CredentialsForm(
            nameController: nameController,
            emailController: emailController,
            passwordController: passwordController,
          ),
        ],
      ),
    );
  }
}

class _SocialLoginSection extends StatelessWidget {
  const _SocialLoginSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        color: CustomColors.white,
        border: Border(
          bottom: BorderSide(width: 0.5, color: CustomColors.muted),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: AppSpacing.sm),
              child: Text(
                "Sign up with",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: CustomColors.defaultColor,
                  fontSize: AppFontSizes.md + 1,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.sm),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                _SocialButton(
                  icon: FontAwesomeIcons.github,
                  label: "GITHUB",
                  style: TextStyle(
                    color: CustomColors.black,
                    fontSize: 13,
                  ),
                ),
                _SocialButton(
                  icon: FontAwesomeIcons.google,
                  label: "GOOGLE",
                  style: TextStyle(
                   fontSize: 13, 
                  color: CustomColors.black,
                  ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final TextStyle style;

  const _SocialButton({required this.icon, required this.label, required this.style});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSpacing.xl + AppSpacing.sm,
      width: AppSpacing.xl * 3 + AppSpacing.sm,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: CustomColors.primary,
          backgroundColor: CustomColors.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.sm),
          ),
          padding: EdgeInsets.zero,
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.sm + AppSpacing.xs,
            horizontal: AppSpacing.sm,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(icon, size: AppFontSizes.sm + 1),
              const SizedBox(width: 5),
              Text(
                label,
                style: style,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CredentialsForm extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const _CredentialsForm({
    required this.nameController,
    required this.emailController,
    required this.passwordController,
  });

  @override
  State<_CredentialsForm> createState() => _CredentialsFormState();
}

class _CredentialsFormState extends State<_CredentialsForm> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.60,
      color: const Color.fromRGBO(232, 234, 238, 1),
      padding: const EdgeInsets.all(AppSpacing.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
              child: Text(
                "Or sign up with credentials",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.sm + 1),
            child: Input(
              placeholder: "Name",
              prefixIcon: const Icon(Icons.person),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.sm + 1),
            child: Input(
              placeholder: "Email",
              prefixIcon: const Icon(Icons.email),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.sm + 1),
            child: Input(
              placeholder: "Password",
              prefixIcon: const Icon(Icons.lock),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: AppSpacing.lg),
            child: RichText(
              text: TextSpan(
                text: "password strength: ",
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: CustomColors.muted),
                children: [
                  TextSpan(
                    text: "strong",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: CustomColors.success,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                activeColor: CustomColors.primary,
                value: checkboxValue,
                onChanged: (bool? newValue) {
                  setState(() {
                    checkboxValue = newValue ?? false;
                  });
                },
              ),
              Text(
                "I agree with the",
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: CustomColors.muted),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(left: AppSpacing.xs + 2),
                  child: Text(
                    "Privacy Policy",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: CustomColors.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: CustomColors.white,
                backgroundColor: CustomColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSpacing.sm + 1),
                ),
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                final user = User(
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                  email: widget.emailController.text,
                  password: widget.passwordController.text,
                  personId: '',
                );
                print(
                  'Usuário criado: id=`${user.id}`, email=`${user.email}`, personId=`${user.personId}`',
                );
                Navigator.pushNamed(context, RouteNames.home);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.lg - 4,
                  vertical: AppSpacing.sm + 2,
                ),
                child: Text(
                  "CREATE ACCOUNT",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontSize: AppFontSizes.md + 1,
                    color: CustomColors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
