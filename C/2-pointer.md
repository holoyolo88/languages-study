2.포인터
=========
## 1. 포인터의 의미
포인터란 각 변수의 시작 주소를 저장하기 위한 메모리 공간(변수). 

32비트 Windows에서 단일 프로세스는 총 4기가바이트의 가상 메모리를 사용할 수 있으므로 포인터 변수는 00000000(16)에서 FFFFFFFF(16)까지의 주소를 저장할 수 있는 4바이트 크기를 가짐.

cf> sizeof 연산자  
sizeof 연산자는 피연산자 형식의 개체를 저장하기 위해 필요한 메모리 공간(바이트)을 부호 없는 정수 계열 상수로 제공함.
피연산자는 unary-expression 식별자이거나 괄호로 묶은 형식 지정자인 형식 캐스트 식.  
unary-expression은 비트 필드 개체, 불완전한 형식 또는 함수 지정자를 나타낼 수 없음.  

    sizeof unary-expression  
    sizeof ( type-name )
    sizeof ( 0x00000000 ) == 4

	char arr[2]={3,6};
    sizeof(arr[0]+arr[1]) == 4 // 연산자 우선순위


## 2. n차원 포인터
n차원 포인터란 n-1차원 포인터 변수의 시작 주소를 저장하기 위한 메모리 공간(변수).  
따라서 C언어에서는 n차원 포인터 변수로 메모리 자체(값)에 접근할 경우  *연산자를 n번 사용해야 함. 


## 3. 포인터 연산
모든 자료형(기본 자료형, 구조체, 공용체)의 변수의 주소는 의미를 가지며 정수를 더하거나 뺄 수 있는데 자료형에 따라 연산 결과가 달라짐. 주소에서 주소를 빼면 변수의 개수가 됨.

eg> 포인터 변수가 32비트 크기를 가지는 데이터 모델을 사용하는 cpu나 운영체제에서 2차원 이상의 포인터 변수에 덧셈 또는 뺄셈 연산을 할 경우 4바이트가 증감.

> 변수의 시작 주소가 아닐 경우에도 포인터 연산 가능? 
> 
>     #include<stdio.h>  
>     int main(){
>     int a, b=5;
>     a=&b;
>     printf("%d", *a); // complie error
>     }
> int형과 int*형의 차이점은 *연산자의 사용 가능 여부?

### 3.1. 포인터 연산과 증감 연산자

    int a = 1;
    int *p = &a;
    
    *p++ == *p 그리고 p = &a + 1 
         == *(p++)

    *++p == *(p=&a+1)

    ++*p == (*p=*p+1) ( a = 2 ) // 전위
         == ++(*P)
    
    (*p)++ == *p=*p+1 ( a = 3) // 후위
> 후위 증감 연산은 참조 전 또는 다음 문장 실행 전에 수행?

    
    