# enum
## 1. 열거 타입의 의미  
열거 상수로 정의된 한정된 값만을 갖는 데이터 타입.
몇 개의 열거 상수 중에서 하나의 상수를 저장하므로 열거 타입 변수값은 열거 상수 중 하나여야 함.


## 2. 열거 타입 선언
열거 타입 소스 파일(.java) 생성
파일 이름과 동일한 이름으로 열거타입이름 선언

public enum 열거타입이름 {열거상수}

eg >

    public enum Week{
        MONDAY,
        TUESDAY,
        WEDNESDAY,
        THURSDAY,
        FRIDAY,
        SATURDAY,
        SUNDAY } //마지막 세미콜론 생략


## 3. 열거 타입 변수
열거 타입도 하나의 데이터 타입이므로 변수를 선언하여 사용함. 
열거 상수는 단독으로 사용할 수 없고 반드시 열거타입.열거 상수 형태로 사용해야 함.   
열거 타입 변수 변수명;  
변수명 = 열거 타입.열거 상수  

eg>

    Week today;  
    today = Week.MONDAY;  
    today = null;  

## 4. 열거 객체
**메소드 영역에 생성된 열거 상수는 해당 열거 상수명의 문자열을 갖는 힙 영역의 Week 열거 객체를 각각 참조하게 됨.**  
열거 타입 Week의 경우 열거 상수 MONDAY부터 SUNDAY까지 총 7개의 Week 객체가 생성되고 열거 상수는 해당 열거 객체를 참조하게 됨.

스택 영역에 생성된 열거 타입 변수는 열거 상수가 참조하는 객체의 번지를 저장함.  
today에 저장된 값은 Week.MONDAY 열거 상수가 참조하는 객체의 번지와 같으므로 today == Week.SUNDAY의 결과는 true.

### 4.1 열거 객체의 메소드
열거 객체는 열거 상수의 문자열을 내부 데이터로 가짐.
모든 열거 타입은 컴파일 시에 Enum클래스를 상속하게 되므로 java.lang.Enum 클래스에 선언된 메소드를 가짐.
|리턴타입|메소드(매개 변수)|설명|
|---|---|---|
String| name() | 열거 객체의 문자열을 리턴
int | ordinal() |열거 객체의 순번(0부터 시작)을 리턴
int | compareTo() |열거 객체를 비교해서 순번 차이를 리턴
열거 타입|valueOf() |주어진 문자열의 열거 객체를 리턴
열거 배열|values() | 모든 열거 객체들을 배열로 리턴

eg>

    for(Week day : Week.values())
    System.out.println(day); // 열거 객체가 가지는 내부 데이터인 열거 상수명과 동일한 문자열을 출력

    Week[] day = Week.values();
    for(int i=0; i<day.length; i++)
    System.out.println(day[i]); // 열거 객체가 가지는 내부 데이터인 열거 상수명과 동일한 문자열을 출력

### 4.2 열거 객체의 필드, 생성자, 사용자 정의 메소드
열거 타입은 필드, 생성자, 메소드를 가질 수 있어 상수보다 더 많은 역할 수행 가능. 
eg>

    public enum Week{
        MONDAY("월"),
        TUESDAY("화"),
        WEDNESDAY("수"),
        THURSDAY("목"),
        FRIDAY("금"),
        SATURDAY("토"),
        SUNDAY("일"); // 마지막 세미콜론 생략 불가능

        public String korean; // 필드

        Week(String korean){ // 생성자
            this.korean = korean;
        }

        public getKorean() // 사용자 정의 메소드
        {
            return this.korean;
        }
    }

    Week today = Week.MONDAY
    System.out.println(today.korean) // "월" 출력


## 5. 열거 타입의 배경
### 1.1 열거 타입의 배경
[오픈 튜토리얼스-JAVA-상수와 enum](https://opentutorials.org/module/516/6091)

상수를 static final로 선언할 수 있으나 중복되는 이름의 상수를 선언 불가. -> 상수와 추상메소드만 선언할 수 있는 인터페이스에 상수를 선언하여 상수를 구분함. -> 인터페이스로 구분할 경우 상수의 값이 같으면 == 연산 결과가 참이 되어버림. -> class를 선언하여 == 비교 연산할 수 없도록 함. -> class 선언을 단순화하여 enum 문법으로 정의함.

따라서 enum은 많은 곳에서 사용하던 디자인 패턴을 언어가 채택해서 문법적인 요소로 단순화시킨 것으로 코드를 단순화하고 인스턴스 생성과 상속을 방지함.
또한 키워드 enum을 사용하여 구현의 의도가 열거임을 분명하게 나타낼 수 있음.

    class Week{
    
        public static final Week MONDAY = new Week();
        public static final Week TUESDAY = new Week();
        public static final Week THURSDAY = new Week();
        public static final Week WEDNESDAY = new Week();
        public static final Week THURSDAY = new Week();
        public static final Week FRIDAY = new Week();
        public static final Week SATURDAY = new Week();
        public static final Week SUNRDAY = new Week();

        private Week(){}
    }

    // enum을 통한 단순화
    enum Week{
        MONDAY,
        TUESDAY,
        WEDNESDAY,
        THURSDAY,
        FRIDAY,
        SATURDAY,
        SUNDAY
    }