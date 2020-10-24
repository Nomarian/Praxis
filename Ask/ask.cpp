#include<iostream>
#include<string>
// written by The_niz
using namespace std;

int main()
{

	string text;
	getline(cin,text);
	if(cin.fail())
		return 1;
	else
		cout << text << "\n";


	return 0;
}
