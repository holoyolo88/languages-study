5.포인터와 문자열
================
## 1. 문자열의 의미
문자열이란 '\0'문자를 포함한 문자들이 메모리상에 연속적으로 존재하는 것.  
문자열의 시작 주소를 알면 모든 문자에 접근 가능함. 
  
변경이 불가능한 메모리인 상수 영역과 변경이 가능한 메모리인 변수 영역 모두에 존재할 수 있음.  

    char arr[5] = "ABCD";
    char *p = "ABCD";
    
    arr[0]='Z';
    p[0]='Z'; // 문자열 상수가 저장된 상수 영역의 메모리로 수정 불가

    p=arr;
    arr=p; // 배열의 시작 주소인 상수로 수정 불가

> 인자로 전달되는 모든 문자열은 상수?
> 가장 뒤에 '\0'이 저장된 int형 배열에 문자열 함수 사용 가능 여부?   

cf> 
|구분|설명|
|:---|:---|
| 1 | 10진 정수 1 (일 숫자)|
|'1'| ASCII 코드 10진 정수 49 (일 문자)|
|"1"| 문자열 '1'+'\0' (일 문자열)|
|"123"|문자열 '1'+'2'+'3'+'\0' (일이삼 문자열)|
|'\0'| ASCII 코드 10진 정수 0 (널 문자)|
|'0'| ASCII 코드 10진 정수 48 (영 문자)|
|''|한 문자를 의미하지만 문자를 포함하지 않으므로 컴파일 오류 발생|
|' '| ASCII 코드 10진 정수 32 (공백 문자)|
|" "| 문자열 ' '+'\0' (공백 문자열)|
|""|문자열 '\0' (널 문자만 갖는 문자열)|
|NULL| 주소 ((void*)0)|

> 상수 영역과 변수 영역이란?  
> 상수 영역의 메모리 할당과 해제는 컴파일러가?  

## 2. 문자 코드
컴퓨터는 메모리에 0과 1만을 저장할 수 있으므로 컴퓨터에서 문자를 표현하기 위해 각각의 문자와 대응하게 정의된 숫자.
* ASCII 코드(ANSI 코드)
* 유니코드
> 유니코드는 여러 가지 형태로 인코딩(정의된 문자 코드를 컴퓨터에서 표현하는 방법)될 수 있으며 C언어에서는 2바이트 인코딩 유니코드 형식을 지원함.