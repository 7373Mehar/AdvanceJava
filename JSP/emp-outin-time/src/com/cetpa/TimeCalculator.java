package com.cetpa;

public class TimeCalculator 
{
	public static String getTotalTime(String intime,String outtime)
	{
		String[] it=intime.split(":");
		String[] ot=outtime.split(":");
		int intimesec=getTotalSeconds(it);
		int outtimesec=getTotalSeconds(ot);
		int total=intimesec-outtimesec;
		String time=total/60+" min "+total%60+" sec";
		return time;
	}
	private static int getTotalSeconds(String[] x)
	{
		int time=Integer.parseInt(x[0])*60*60+Integer.parseInt(x[1])*60+Integer.parseInt(x[2]);
		return time;
	}
}
