#include <iostream>
// 함수 overloading : 함수 호출 시 전달되는 인자를 통해서 호출하고자 하는 함수 구분 가능.
// c언어에서는 함수의 이름만 이용해 호출대상을 찾지만
// c++언어에서는 함수의 이름과 매개변수의 선언을 이요해 호출대상을 찾으므로 함수 오버로딩 가능.
// 반환형은 함수 호출 시, 호출되는 함수를 구분하는 기준이 될 수 없음. 
void swap(int* a, int* b)
{
	int temp;
	temp=*a;
	*a=*b;
	*b=temp;
}
void swap(char* a, char* b)
{
	char temp;
	temp=*a;
	*a=*b;
	*b=temp;
}
void swap(double* a, double* b)
{
	double temp;
	temp=*a;
	*a=*b;
	*b=temp;
}
int main(void)
{
	int num1=20, num2=30;
	swap(&num1,&num2);
	std::cout<<num1<<' '<<num2<<std::endl;
	
	char ch1='A', ch2='Z';
	swap(&ch1, &ch2);
	std::cout<<ch1<<' '<<ch2<<std::endl;
	
	double dbl1=1.111, dbl2=5.555;
	swap(&dbl1, &dbl2);
	std::cout<<dbl1<<' '<<dbl2<<std::endl;
	return 0;
}
