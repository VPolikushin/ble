import 'package:flutter_blue/flutter_blue.dart';

abstract class BleState {
  late BluetoothState status;

  BleState({required this.status});
}

class BluetoothInitialState extends BleState{
  BluetoothInitialState({required BluetoothState status}) :
    super(status: status);
}

class BluetoothWorkState extends BleState{
  BluetoothWorkState({required BluetoothState status}) :
        super(status: status);
}