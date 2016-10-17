package cn.hua.utils;

public class ThreadControl extends Thread{
	private Object obj;
	private String method;
	public ThreadControl(Object obj,String method){
		this.obj = obj;this.method= method;
	}
	@Override
	public void run() {
		// TODO Auto-generated method stub
		
	}
	
}
