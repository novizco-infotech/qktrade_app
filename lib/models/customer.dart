import 'package:equatable/equatable.dart';

class Customer extends Equatable {
  final int id;
  final String name;
  final double openBal;
  final double currBal;
  final String phone;
  final String address;
  final String email;

  const Customer(
      {required this.id,
      required this.name,
      required this.openBal,
      required this.currBal,
      required this.phone,
      required this.address,
      required this.email});

  @override
  List<Object?> get props => [id, name];
}
