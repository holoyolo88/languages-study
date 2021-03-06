10.주요 입출력 함수
===============

## CRL 기본 문자 입출력 함수

* getc 함수  

| int getc(FILE *stream); | 파일에서 문자 하나를 버퍼를 거치지 않고 입력받고 문자 하나를 반환 |
|:---|:---|
| 인자 | 없음 |
| 반환 값 | 입력된 문자 하나 |


* fgetc 함수  

| int fgetc(FILE *stream); | 파일에서 문자 하나를 버퍼를 거치지 않고 입력받고 문자 하나를 반환 |
|:---|:---|
| 인자 | 없음 |
| 반환 값 | 입력된 문자 하나 |

* getch 함수

| int getch(void); | 표준 입력장치로 문자 하나를 버퍼를 거치지 않고 입력받고 문자 하나를 반환 |
|:---|:---|
| 인자 | 없음 |
| 반환 값 | 입력된 문자 하나 |

* getche 함수  

| int getche(void); | 표준 입력 장치로 문자 하나를 버퍼를 거치지 않고 입력받고 문자 하나를 반환|
|:---|:---|
| 인자 | 없음. |
| 반환 값 | 입력한 문자 하나 |
버퍼를 사용하지 않지만 화면에 입력한 문자를 보여줌.

* getchar 함수

| int getchar(void); | 표준 입출력 버퍼에서 문자 하나를 입력받고 문자 하나를 반환  버퍼가 빈 경우 표준 입력 장치로 '\n'을 구분자로 입력 받아 첫 번째 문자 하나를 반환 |
|:---|:---|
| 인자 | 없음 |
| 반환 값 | 입력한 문자 하나 / 오류 발생 시 EOF(-1) |



* putc 함수  

| int putc(int c, FILE *stream); | 파일에서 문자 하나를 버퍼를 거치지 않고 입력받고 문자 하나를 반환 |
|:---|:---|
| 인자 | 없음 |
| 반환 값 | 입력된 문자 하나 |



* fputc 함수  

| int fputc(int c, FILE *stream); | 표준 입력장치로 문자 하나를 버퍼를 거치지 않고 입력받고 문자 하나를 반환 |
|:---|:---|
| 인자 | 없음 |
| 반환 값 | 입력된 문자 하나 |





* putch 함수

| int putch(int ch); | 표준 출력장치로 문자 하나를 버퍼를 거치지 않고 출력하고 문자 하나를 반환 |
|:---|:---|
| 인자 | 출력할 문자 하나 |
| 반환 값 | 출력된 문자 하나  오류 발생 시 EOF(-1)|

getch 함수와 putch 함수는 conio.h의 콘솔 입출력 함수. 그러나 현재는 C언어 표준이 아니며 Visual Studio에서만 사용 가능. 비표준 함수를 사용했을 때의 에러 방지를 위해 \#define _CRT_NONSTDC_NO_WARNINGS 사용. 
> 만약 매크로를 지정하지 않으려면 getch 대신 _getch 함수를 사용.



### getch 함수와 getchar 함수 비교  
getch 함수는 입력 버퍼를 사용하지 않기 때문에 입력 시 문자가 화면에 보이지 않으며, 바로 변수에 저장됨.  
getchar 함수는 입력 버퍼를 사용하기 때문에 입력 시 문자가 화면에 보이며, 문자가 입력 버퍼에 들어간 뒤 엔터 키를 누르면 변수에 저장됨.  



* putchar() 함수

| int putchar(int ch); | 표준 출력 장치로 문자 하나를 버퍼를 사 출력하고 문자 하나를 반환. |
|:---|:---|
| 인자 | 출력할 문자 하나 |
| 반환 값 | 출력한 문자 하나 오류 발생 시 EOF(-1) |


> stdio.h 헤더 파일의 putchar 함수는 출력 버퍼를 사용



# .문자 입출력 함수 비교

| | getch() | getche() | getchar() |
|:---:|:---:|:---:|:---:|
| 버퍼 사용 | X | X | O |
| 화면 표시 | X | O | O |
| 입력 종료 | \n | \r | \n |


|  | putch() | putchar() |
|:---:|:---:|:---:|
| 버퍼 사용 | X | O |


* gets
* fgets
* puts
* fputs

* scanf 함수
* fscanf 함수
* sscanf 함수
* printf 함수
* fprintf 함수
* sprintf 함수


