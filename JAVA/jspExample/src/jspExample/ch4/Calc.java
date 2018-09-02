package jspExample.ch4;

public class Calc {

	int result = 0;
	public Calc(int num1, int num2, String op) {

	if(op.equals("+")) {
		result = num1+num2;
	}
	else if(op.equals("-")) {
		result = num1-num2;
	}
	else if(op.equals("*")) {
		result = num1*num2;
	}
	else if(op.equals("/")) {
		// ArithmeticException 발생 가능
		if (num2 !=0)
		result = num1/num2;
	}
	}
	
	public int getResult()
	{
		return result;
	}

}
