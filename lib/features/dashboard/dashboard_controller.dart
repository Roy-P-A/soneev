import 'package:winemonger/models/dashboarditems.dart';

class DashboardList {
  List<DashboardItems> dashboardList = [
    DashboardItems(
      icon: 'assets/svgs/orders.svg',
      title: 'Orders',
      linkToPage: '/orders',
    ),
    DashboardItems(
        icon: 'assets/svgs/tastings.svg',
        title: 'Tastings',
        linkToPage: '/tastings'),
    DashboardItems(
      icon: 'assets/svgs/reservations.svg',
      title: 'Reservations',
      image: 'assets/images/new.gif',
      linkToPage: '/reservations',
    ),
    DashboardItems(
      icon: 'assets/svgs/manufacturers.svg',
      title: 'Manufactures',
      image: 'assets/images/new.gif',
      linkToPage: '/manufacturers',
    ),
    DashboardItems(
      icon: 'assets/svgs/sales.svg',
      title: 'Sales',
      linkToPage: '/sales',
    ),
    DashboardItems(
      icon: 'assets/svgs/products.svg',
      title: 'Products',
      linkToPage: '/products',
    ),
    DashboardItems(
      icon: 'assets/svgs/customers.svg',
      title: 'Customers',
      linkToPage: '/customers',
    ),
    DashboardItems(
      icon: 'assets/svgs/imports.svg',
      title: 'Imports',
      linkToPage: '/imports',
    ),
  ];
}
