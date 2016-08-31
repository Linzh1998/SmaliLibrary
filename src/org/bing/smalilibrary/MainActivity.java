package org.bing.smalilibrary;

import com.android.smalilib.LogUtil;

import android.app.Activity;
import android.os.Bundle;
import android.os.Debug;

public class MainActivity extends Activity {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Debug.waitForDebugger();
		
		Debug.startMethodTracing();
		
		// ��ӡ��ջ
		Thread.dumpStack();
		
		// ��ӡ��־
		LogUtil.d("Hello");
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
		
		Debug.stopMethodTracing();
	}
	

}
