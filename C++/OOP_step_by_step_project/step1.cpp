#include<iostream>
#include<stdlib.h>
using namespace std;
typedef struct account
{
	int num;
	char name[16];
	int remain;
}acnt;

void menu()
{
	cout << "-----Menu-----\n";
	cout << "1.계좌 개설\n";
	cout << "2.입금\n";
	cout << "3.출금\n";
	cout << "4.계좌정보 전체 출력\n";
	cout << "5.프로그램 종료\n";
}
int createacnt(int now, acnt *ptrarr)
{
	cout << "[계좌 개설]\n";
	(ptrarr+now) = (acnt*)malloc(sizeof(acnt));
	cin >> (ptrarr + now)->num >> (ptrarr + now)->name >> (ptrarr + now)->remain;
	return now;
}
void deposit(int max, acnt *ptrarr)
{
	int inputnum;
	char inputmoney;
	cout << "[입금]\n";
	cout << "계좌ID:";
	cin >> inputnum;
	cout << "입금액\n";
	cin >> inputmoney;
	for (int i = 0; i<max; i++)
	{
		((ptrarr + i)->num == inputnum);
		(ptrarr + i)->remain += inputmoney;
	}
	cout << "입금완료\n";
}
void withdrawl(int max, acnt *ptrarr)
{
	int inputnum;
	char inputmoney;
	cout << "[출금]\n";
	cout << "계좌ID:";
	cin >> inputnum;
	cout << "출금액\n";
	cin >> inputmoney;
	for (int i = 0; i<max; i++)
	{
		((ptrarr + i)->num == inputnum);
		(ptrarr + i)->remain -= inputmoney;
	}
	cout << "출금완료\n";
}
void printacnt(int max, acnt *ptrarr)
{
	for (int i = 0; i <= max; i++)
	{
		cout << "계좌ID:" << (ptrarr + i)->num;
		cout << "이름:" << (ptrarr + i)->name;
		cout << "잔액:" << (ptrarr + i)->remain;
	}
}
int main(void)
{
	int input;
	acnt *arr = (acnt*)malloc(sizeof(acnt));
	int max;
	for (int i = 0; ; i++)
	{
		menu();
		cin >> input;
		if (input == 5) break;
		switch (input)
		{
		case 1:
			max = createacnt(i, arr);	break;
		case 2:
			deposit(max, arr);		break;
		case 3:
			withdrawl(max, arr);		break;
		case 4:
			printacnt(max, arr);		break;
		}
	}
}
