#include<iostream>
using namespace std;
int main()
{
    cout<<"Heyy Enter Your Semster No: ";
    int sem;
    cin>>sem;
    cout<<"Here Your Subjects:\n";
        switch(sem)
    {
    case 1:
        cout<<"Maths\nOthers";
        break;
    case 2:
        cout<<"Maths\nCoreComputer\nOthers";
        break;
    case 3:
        cout<<"Maths";
        break;
    case 4:
        cout<<"Maths";
        break;
    case 5:
        cout<<"CoreComputer";
        break;
    case 6:
        cout<<"CoreComputer";
        break;
    case 7:
        cout<<"CoreComputer";
        break;
    }
    return 0;
}
