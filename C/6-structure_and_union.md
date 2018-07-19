6.구조체와 공용체
=================
## 1. 구조체의 의미
구조체란 사용자가 필요에 따라 기본 자료형들을 모아 정의한 또 다른 자료형.  

cf> .연산자  
C언어에서 .연산자를 사용하여 구조체 변수의 멤버 변수에 접근 가능.  

### 1.2 구조체의 크기
구조체는 멤버 변수들의 크기에 따라 구조체의 크기가 결정되지만 컴파일러가 프로그램 성능 향상을 위해 멤버 중에서 가장 큰 자료형의 크기로 구조체 변수들을 주소에 매핑(패딩 바이트를 추가한 바이트 정렬)시켜 구조체의 크기가 예상한 것과 달라질 수 있음.

구조체의 크기가 모든 멤버 변수들의 크기의 합과 같도록 주소를 매핑시키려면 전처리를 이용한 #pragma pack() 옵션으로 설정할 수 있으나 속도가 저하될 수 있음.

cf> 패딩 바이트 
DB에서 패딩은 레코드나 블록의 맨 나중에 공백이나 의미가 없는 기호등을 추가하여 레코드나 블록을 고정 길이로 하는 것. 

## 2. 공용체의 의미
공용체란 구조체와 유사하나 멤버들끼리 메모리를 공유해야 하는 경우, 메모리를 절약해야 하는 경우, 일정한 크기의 메모리가 여러 자료형으로 사용되는 경우에 사용하는 자료형.

### 3. 구조체와 공용체 비교
공통점
* 배열과 달리 여러 자료형 사용 가능.
* 사용자가 선언하는 자료형으로 기본 자료형과 또 다른 구조체, 공용체를 멤버 변수로서 사용 가능.
* &연산자를 사용해 구조체 또는 공용체 변수의 시작 주소를 구함.  

차이점
* 구조체는 구조체의 멤버마다 메모리가 만들어지는 반면 공용체는 멤버들끼리 메모리를 공유.  

> 구조체에 공용체, 공용체에 구조체 멤버 변수 사용 가능?
> 구조체와 공용체를 결합하여 구조체 정의 시의 멤버 구조체 선언 방법? struct()이름;?
> 
## 4. 비트 필드
비트 필드는 구조체와 유사하나 바이트 단위로 멤버를 사용하는 구조체와 달리 비트 단위로 멤버를 사용가능.  
많은 상태를 저장하거나 비트별로 제어해야 하는 경우에 비트 필드를 사용.  

    struct _bitfield{ 
    unsigned b0 : 1; // 멤버 자료형(실수 자료형 제외) 멤버 이름 : bit수
    unsigned b1 : 3; 
    unsigned b2 : 4;
    unsigned    : 8;
    unsigned b3 : 8;
    };

> 비트 필드는 구조체?
> _bitfield의 변수는 24비트만 사용?
> 멤버의 이름이 없는 비트는 사용 불가?