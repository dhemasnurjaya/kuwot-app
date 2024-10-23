import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:kuwot/features/in_app_purchase/presentation/bloc/in_app_purchase_bloc.dart';
import 'package:kuwot/features/in_app_purchase/presentation/bloc/purchase_details_cubit.dart';

@RoutePage()
class DonationPage extends StatefulWidget {
  const DonationPage({super.key});

  @override
  State<DonationPage> createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  final List<ProductDetails> _products = [];

  @override
  void initState() {
    super.initState();

    // get consumable products
    context.read<InAppPurchaseBloc>().add(const GetConsumableProductsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appreciate it!'),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<PurchaseDetailsCubit, List<PurchaseDetails>>(
            listener: (context, state) {
              final purchaseSuccess =
                  state.last.status == PurchaseStatus.purchased;
              if (purchaseSuccess) {
                _showPurchaseSuccessDialog();
              }
            },
          ),
          BlocListener<InAppPurchaseBloc, InAppPurchaseState>(
            listener: (context, state) {
              if (state is ConsumableProductsLoadedState) {
                setState(() {
                  _products.clear();
                  _products.addAll(state.products);
                });
              }
            },
          ),
        ],
        child: ListView(
          children: _buildProductList(),
        ),
      ),
    );
  }

  List<Widget> _buildProductList() {
    return _products.map((product) {
      final title = product.title.replaceAll('(Kuwot)', '(${product.price})');
      return ListTile(
        title: Text(title),
        subtitle: Text(product.description),
        onTap: () {
          context
              .read<InAppPurchaseBloc>()
              .add(PurchaseConsumableProductEvent(product));
        },
      );
    }).toList();
  }

  void _showPurchaseSuccessDialog() {
    showAdaptiveDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Thank you!'),
          content: const Text('Your donation is highly appreciated!'),
          actions: [
            TextButton(
              onPressed: () {
                context.router.maybePop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
