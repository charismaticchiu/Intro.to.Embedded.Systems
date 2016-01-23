package com.example.bletestv2;

import java.util.UUID;

import android.app.Activity;
import android.app.ActionBar;
import android.app.Fragment;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.os.Build;

public class MainActivity extends Activity implements SensorEventListener{


	
	// BLE
	private BluetoothAdapter mBluetoothAdapter;
	private static final int REQUEST_ENABLE_BT = 1;
	private boolean mScanning;
	private Handler mHandler;
	private static final long SCAN_PERIOD = 20000;
	//private ArrayList<BluetoothDevice> mLeDeviceList;
	private BluetoothGatt mBluetoothGatt;
	private BluetoothGattCharacteristic characteristic;	
	
	// Sensor
	private Sensor accelerometer;
    private SensorManager sm;
    private TextView acceleration;
    private DecisionMaker dm;
	
	@Override
    protected void onCreate(Bundle savedInstanceState) {
		
        super.onCreate(savedInstanceState);
        setContentView(R.layout.f);

        /*if (savedInstanceState == null) {
            getFragmentManager().beginTransaction()
                    .add(R.id.container, new PlaceholderFragment())
                    .commit();
        }
        */
        
        // Sensors set up
        sm = (SensorManager)getSystemService(SENSOR_SERVICE);
        accelerometer=sm.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
        sm.registerListener(this, accelerometer, SensorManager.SENSOR_DELAY_NORMAL);  
        acceleration = (TextView)findViewById(R.id.textView1);
        dm = new DecisionMaker();
        
        // Initializes Bluetooth adapter.
     	final BluetoothManager bluetoothManager =
     		        (BluetoothManager) getSystemService(Context.BLUETOOTH_SERVICE);
     	mBluetoothAdapter = bluetoothManager.getAdapter();
     	
		// Ensures Bluetooth is available on the device and it is enabled. If not,
		// displays a dialog requesting user permission to enable Bluetooth.
		if (mBluetoothAdapter == null || !mBluetoothAdapter.isEnabled()) {
		    Intent enableBtIntent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
		    startActivityForResult(enableBtIntent, REQUEST_ENABLE_BT);
		}
		//mLeDeviceList = new ArrayList<BluetoothDevice>();
		scanLeDevice(true);
      
    }

	@Override
    protected void onPause() {
        super.onPause();
        scanLeDevice(false);
    }
	
	// SCAN
	private void scanLeDevice(boolean enable) {
		if (enable) {
            // Stops scanning after a pre-defined scan period.
            mHandler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    mScanning = false;
                    mBluetoothAdapter.stopLeScan(mLeScanCallback);
                }
            }, SCAN_PERIOD);

            mScanning = true;
            mBluetoothAdapter.startLeScan(mLeScanCallback);
        } else {
            mScanning = false;
            mBluetoothAdapter.stopLeScan(mLeScanCallback);
        }

    }
	
	// While remote BLE devices are found, callback onLeScan will be invoked to handle the information
	private BluetoothAdapter.LeScanCallback mLeScanCallback =
		       new BluetoothAdapter.LeScanCallback() {
		@Override
		public void onLeScan(final BluetoothDevice device, int rssi, byte[] scanRecord) {
			runOnUiThread(new Runnable() {
				@Override
		        public void run() {
					/*mLeDeviceListAdapter.addDevice(device);
		              mLeDeviceListAdapter.notifyDataSetChanged();*/
		        	  if (device.getName().equals("Neo's node")) {
		        		  UUID uuid = new UUID(0xff, 0xf1);
		        		  characteristic = new BluetoothGattCharacteristic(uuid, BluetoothGattCharacteristic.PROPERTY_READ+BluetoothGattCharacteristic.PROPERTY_WRITE, 
		        				  BluetoothGattCharacteristic.PERMISSION_READ+BluetoothGattCharacteristic.PERMISSION_WRITE);
		        		  connect(device.getAddress());
		        	  }
		        }
		    });
		}

	};
		
		
	// CONNECT
	public void connect(String address) {
		BluetoothDevice device = mBluetoothAdapter.getRemoteDevice(address);
		mBluetoothGatt = device.connectGatt(this, false, mGattCallback);
		Log.i("connect", device.getName()+":"+device.getAddress());
	}
		
	// GATT
	private BluetoothGattCallback mGattCallback = new BluetoothGattCallback() {

		    /*@Override
		    public void onConnectionStateChange(BluetoothGatt gatt, int status, int newState) {
		      if (mBluetoothGatt == null) {
		        Log.e(TAG, "mBluetoothGatt not created!");
		        return;
		      }

		      BluetoothDevice device = gatt.getDevice();
		      String address = device.getAddress();
		      Log.d(TAG, "onConnectionStateChange (" + address + ") " + newState + " status: " + status);

		      try {
		        switch (newState) {
		        case BluetoothProfile.STATE_CONNECTED:
		          broadcastUpdate(ACTION_GATT_CONNECTED, address, status);
		          break;
		        case BluetoothProfile.STATE_DISCONNECTED:
		          broadcastUpdate(ACTION_GATT_DISCONNECTED, address, status);
		          break;
		        default:
		          Log.e(TAG, "New state not processed: " + newState);
		          break;
		        }
		      } catch (NullPointerException e) {
		        e.printStackTrace();
		      }
		    }*/

		    /*@Override
		    public void onServicesDiscovered(BluetoothGatt gatt, int status) {
		      BluetoothDevice device = gatt.getDevice();
		    	broadcastUpdate(ACTION_GATT_SERVICES_DISCOVERED,device.getAddress(),status);
		    	
		    }*/

		    /*@Override
		    public void onCharacteristicChanged(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic) {
		    	broadcastUpdate(ACTION_DATA_NOTIFY,characteristic,BluetoothGatt.GATT_SUCCESS);
		    }*/

		    @Override
		    public void onCharacteristicRead(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
		    	//broadcastUpdate(ACTION_DATA_READ,characteristic,status);
		    }

		    @Override
		    public void onCharacteristicWrite(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
		    	//broadcastUpdate(ACTION_DATA_WRITE,characteristic,status);
		    	
		    }

		    /*@Override
		    public void onDescriptorRead(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
		      mBusy = false;
		      Log.i(TAG, "onDescriptorRead");
		    }

		    @Override
		    public void onDescriptorWrite(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
		      mBusy = false;
		      Log.i(TAG, "onDescriptorWrite");
		    }*/
		};
		  
	public void writeCharacteristic(BluetoothGattCharacteristic charac) {
		if (mBluetoothGatt == null)
			Log.i("writeCharacteristic", "mBluetoothGatt is null!");
		else mBluetoothGatt.writeCharacteristic(charac);
	}
		
			
		

/*
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
*/
    /**
     * A placeholder fragment containing a simple view.
     */
    /*
    public static class PlaceholderFragment extends Fragment {

        public PlaceholderFragment() {
        }

        @Override
        public View onCreateView(LayoutInflater inflater, ViewGroup container,
                Bundle savedInstanceState) {
            View rootView = inflater.inflate(R.layout.fragment_main, container, false);
            return rootView;
        }
    }
*/
	@Override
	public void onAccuracyChanged(Sensor sensor, int accuracy) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void onSensorChanged(SensorEvent event) {
		// TODO Auto-generated method stub
		acceleration.setText("X: "+event.values[0] +
				"\nY: "+event.values[1] +
				"\nZ: "+event.values[2]);
		dm.getDecision(event.values[0], event.values[1], event.values[2]);
		Log.i("decision", Byte.toString(dm.getDecision(event.values[0], event.values[1], event.values[2])));
		Log.i("X, Y, Z", Float.toString(event.values[0])+","+
						 Float.toString(event.values[1])+","+
						 Float.toString(event.values[2]));
		
		if (mBluetoothGatt != null) {
			byte value[] = new byte[20];
			value[0] = dm.getDecision(event.values[0], event.values[1], event.values[2]);
			for (int i = 1;i < 20;i ++)
				value[i] = 0x00;
			
			characteristic.setValue(value);
			writeCharacteristic(characteristic);
		}
		
	}

}

