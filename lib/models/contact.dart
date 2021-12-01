class Contact {
  final String name;
  final double accountNumber;

  Contact(this.name, this.accountNumber);

  @override
  String toString() {
    return '$name | $accountNumber';
  }
}
