package work.util;

import java.util.Random;

public class Utility {
	// �ƱԸ�Ʈ�� ���޹��� ���̸�ŭ �����빮�� ���ڿ�
	public static String getSecureAlphaString(int length) {
		Random random = new Random((long)(System.nanoTime() * Math.random()));
		StringBuilder data = new StringBuilder();
		for (int index=0; index < length; index++) {
			data.append((char)(random.nextInt(26) + 65));
		}
		
		return data.toString();
	}	
	
	// �⺻ 4�ڸ� ���̸�ŭ �����빮�� ���ڿ�
	public static String getSecureAlphaString() {
		return getSecureAlphaString(4);
	}
	
	// �ƱԸ�Ʈ�� ���޹��� ���̸�ŭ ���������� ���ڿ�
	public static String getSecureNumberString(int length) {
		Random random = new Random((long)(System.nanoTime() * Math.random()));
		StringBuilder data = new StringBuilder();
		for (int index=0; index < length; index++) {
			//data.append(random.nextInt(10));  // "0345", 345
			data.append(random.nextInt(10) + 1);  // "0345" => "1456", 1456 => 0�� ������� ���� 
		}
		
		return data.toString();
	}
	
	// �⺻ 4�ڸ� ���������� ���ڿ�
	public static String getSecureNumberString() {
		return getSecureNumberString(4);
	}
	
	// �⺻ 4�ڸ� ���� ��ȯ
	public static int getSecureNumber() {
		return Integer.parseInt(getSecureNumberString());
	}
	
	// �ƱԸ�Ʈ�� ���޹��� �ڸ��� ���� ��ȯ
	public static long getSecureNumber(int length) {
		return Long.parseLong(getSecureNumberString(length));
	}
	
	public static void main(String[] args) {
		System.out.println(Utility.getSecureNumberString());
		System.out.println(Utility.getSecureNumberString(6));
		System.out.println(Utility.getSecureNumberString(8));
		System.out.println(Utility.getSecureNumberString(10));
		
		System.out.println(Utility.getSecureAlphaString());
		System.out.println(Utility.getSecureAlphaString(6));
		System.out.println(Utility.getSecureAlphaString(8));
		System.out.println(Utility.getSecureAlphaString(10));
		
		System.out.println(Utility.getSecureNumber() + 100);
		System.out.println(Utility.getSecureNumber(6) + 100);
		System.out.println(Utility.getSecureNumber(8));
		System.out.println(Utility.getSecureNumber(10));
	}
}
