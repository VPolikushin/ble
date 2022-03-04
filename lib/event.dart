import 'package:flutter_blue/flutter_blue.dart';

abstract class BluetoothEvent {
  const BluetoothEvent();
}

class GetBluetoothStatus extends BluetoothEvent {
  const GetBluetoothStatus();
}

class GotBluetoothStatus extends BluetoothEvent {
  const GotBluetoothStatus(this.status);

  final BluetoothState status;
}