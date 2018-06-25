#include <iostream>
int main(void)
{
	char name[100]={0};
	char pnum[15]={0}; // int type일 때 안 되는 이유는? 
	std::cin>>name;
	std::cin>>pnum;
	std::cout<<name<<std::endl<<pnum; 
}

