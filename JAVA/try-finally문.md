public class Test{
	
	public int method()
    {
        try
        {
            System.out.println("TRY");
            return 1;
        }
        finally
        {
            System.out.println("FINALLY");
            return 2;                       
        }
    }
	
	public static void main(String[] args) {
		Test t = new Test();
        System.out.println(t.method());
	}



public class Test{
	
	public int method()
    {
        try
        {
            System.out.println("TRY");
            return 1;
        }
        finally
        {
            System.out.println("FINALLY");
            return 2;                       // ---- (1)
        }
    }
	
	public static void main(String[] args) {
		Test t = new Test();
        System.out.println(t.method());
	}


    f execution of the try block completes abruptly for any other reason R, then the finally block is executed. Then there is a choice:
– If the finally block completes normally, then the try statement completes abruptly for reason R.
– If the finally block completes abruptly for reason S, then the try statement completes abruptly for reason S (and reason R is discarded).


https://docs.oracle.com/javase/specs/jls/se7/html/jls-14.html#jls-14.20.2

finally 블럭을 가진 try문은 try 블럭을 먼저 실행함으로써 실행된다. 
그 후 선택을 하게 되는데

* 만약 try 블럭을 정상적으로 실행 완료한 경우, finally 블럭이 실행된다. 그리고 선택을 하게 되는데
** 만약 finally 블럭이 정상적으로 실행 완료한 경우, try문은 정상적으로 실행 완료된다.

** 만약 finally 블럭이 S라는 이유로 인해 갑자기 실행 완료된 경우, try 문은 S라는 이유로 인해 갑자기 실행 완료된다.

* 만약 try 블럭이 변수를 throw하여 갑자기 실행 완료된 경우 선택지
** 
* 만약 try 블럭이 R이라는 어떤 다른 이유로 인해 갑자기 실행 완료된 경우 finally 블럭은 실행된다. 그리고 
선택지를 가지게 된다.

** 만약 finally 블럭이 정상적으로 실행 완료되면 try 문은 R이라는 이유로 인해 갑자기 종료된 것이다.
** 만약 finally 블럭이 S라는 이유로 인해 갑자기 실행 완료되면 try 문은 S라는 이유로 갑자기 종료된 것이고 R이라는 이유는 버려진다.


If the finally block completes abruptly for reason S, then the try statement completes abruptly for reason S.

If execution of the try block completes abruptly because of a throw of a value V, then there is a choice:

If the run-time type of V is assignment compatible with a catchable exception class of any catch clause of the try statement, then the first (leftmost) such catch clause is selected. The value V is assigned to the parameter of the selected catch clause, and the Block of that catch clause is executed. Then there is a choice:

If the catch block completes normally, then the finally block is executed. Then there is a choice:

If the finally block completes normally, then the try statement completes normally.

If the finally block completes abruptly for any reason, then the try statement completes abruptly for the same reason.

If the catch block completes abruptly for reason R, then the finally block is executed. Then there is a choice:

If the finally block completes normally, then the try statement completes abruptly for reason R.

If the finally block completes abruptly for reason S, then the try statement completes abruptly for reason S (and reason R is discarded).

If the run-time type of V is not assignment compatible with a catchable exception class of any catch clause of the try statement, then the finally block is executed. Then there is a choice:

If the finally block completes normally, then the try statement completes abruptly because of a throw of the value V.

If the finally block completes abruptly for reason S, then the try statement completes abruptly for reason S (and the throw of value V is discarded and forgotten).

If execution of the try block completes abruptly for any other reason R, then the finally block is executed, and then there is a choice:

If the finally block completes normally, then the try statement completes abruptly for reason R.

If the finally block completes abruptly for reason S, then the try statement completes abruptly for reason S (and reason R is discarded).

Example 14.20.2-1. Handling An Uncaught Exception With finally

class BlewIt extends Exception {
    BlewIt() { }
    BlewIt(String s) { super(s); }
}
class Test {
    static void blowUp() throws BlewIt {
        throw new NullPointerException();
    }
    public static void main(String[] args) {
        try {
            blowUp();
        } catch (BlewIt b) {
            System.out.println("Caught BlewIt");
        } finally {
            System.out.println("Uncaught Exception");
        }
    }
}
This program produces the output:

Uncaught Exception
Exception in thread "main" java.lang.NullPointerException
        at Test.blowUp(Test.java:7)
        at Test.main(Test.java:11)
The NullPointerException (which is a kind of RuntimeException) that is thrown by method blowUp is not caught by the try statement in main, because a NullPointerException is not assignable to a variable of type BlewIt. This causes the finally clause to execute, after which the thread executing main, which is the only thread of the test program, terminates because of an uncaught exception, which typically results in printing the exception name and a simple backtrace. However, a backtrace is not required by this specification.

The problem with mandating a backtrace is that an exception can be created at one point in the program and thrown at a later one. It is prohibitively expensive to store a stack trace in an exception unless it is actually thrown (in which case the trace may be generated while unwinding the stack). Hence we do not mandate a back trace in every exception.