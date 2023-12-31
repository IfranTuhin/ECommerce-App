import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMood(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${TTextString.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextSpan(
                text: '${TTextString.privacyPolicy}',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(
                  color: dark
                      ? TColors.white
                      : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? TColors.white
                      : TColors.primary,
                ),
              ),
              TextSpan(
                text: ' and ',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextSpan(
                text: '${TTextString.termsOfUse} ',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(
                  color: dark
                      ? TColors.white
                      : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? TColors.white
                      : TColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}