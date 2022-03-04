import 'package:ble_test/event.dart';
import 'package:ble_test/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue/flutter_blue.dart';



class BluetoothBloc extends Bloc<BluetoothEvent, BleState> {
  BluetoothBloc() : super(BluetoothInitialState(status: BluetoothState.unknown)) {

    on<GetBluetoothStatus>((event, emit) async {
      await emit.forEach<BluetoothState>(
          FlutterBlue.instance.state,
          onData: (BluetoothState status) {
           // add(GotBluetoothStatus(status));
            return BluetoothWorkState(status: status);
          },
      );
    }
    );
    on<GotBluetoothStatus>((event, emit) => emit(BluetoothWorkState(status: event.status)));
  }
}