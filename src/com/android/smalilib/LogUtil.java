package com.android.smalilib;

import android.util.Log;

/*
 * ��־������ 
 * �ṩ��ͬ���͵Ĵ�ӡ����
 * string int char float double
 * ���������������������������
 */
public class LogUtil {
	public static final String TAG = "__BING__";
	
	// ��ӡ�ַ���
	public static void v(String msg) {
		Log.v(TAG, msg);
	}
	
	public static void d(String msg) {
		Log.d(TAG, msg);
	}
	public static void i(String msg) {
		Log.i(TAG, msg);
	}

	public static void w(String msg) {
		Log.w(TAG, msg);
	}

	public static void e(String msg) {
		Log.e(TAG, msg);
	}
	
	// ��ӡint 
	public static void v(int arg) {
		Log.v(TAG, "" + arg);
	}
	
	public static void d(int arg) {
		Log.d(TAG, "" + arg);
	}
	public static void i(int arg) {
		Log.i(TAG, "" + arg);
	}

	public static void w(int arg) {
		Log.w(TAG, "" + arg);
	}

	public static void e(int arg) {
		Log.e(TAG, "" + arg);
	}
	
	// ��ӡboolean  
	public static void v(boolean arg) {
		Log.v(TAG, "" + arg);
	}
	
	public static void d(boolean arg) {
		Log.d(TAG, "" + arg);
	}
	public static void i(boolean arg) {
		Log.i(TAG, "" + arg);
	}

	public static void w(boolean arg) {
		Log.w(TAG, "" + arg);
	}

	public static void e(boolean arg) {
		Log.e(TAG, "" + arg);
	}
	
	// ��ӡchar  
	public static void v(char arg) {
		Log.v(TAG, "" + arg);
	}
	
	public static void d(char arg) {
		Log.d(TAG, "" + arg);
	}
	public static void i(char arg) {
		Log.i(TAG, "" + arg);
	}

	public static void w(char arg) {
		Log.w(TAG, "" + arg);
	}

	public static void e(char arg) {
		Log.e(TAG, "" + arg);
	}
	
	// ��ӡfloat  
	public static void v(float arg) {
		Log.v(TAG, "" + arg);
	}
	
	public static void d(float arg) {
		Log.d(TAG, "" + arg);
	}
	public static void i(float arg) {
		Log.i(TAG, "" + arg);
	}

	public static void w(float arg) {
		Log.w(TAG, "" + arg);
	}

	public static void e(float arg) {
		Log.e(TAG, "" + arg);
	}
	
	// ��ӡdouble  
	public static void v(double arg) {
		Log.v(TAG, "" + arg);
	}
	
	public static void d(double arg) {
		Log.d(TAG, "" + arg);
	}
	public static void i(double arg) {
		Log.i(TAG, "" + arg);
	}

	public static void w(double arg) {
		Log.w(TAG, "" + arg);
	}

	public static void e(double arg) {
		Log.e(TAG, "" + arg);
	}
}
