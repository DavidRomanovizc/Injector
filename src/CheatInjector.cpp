#include "Header.h"


int main() {
    SetConsoleTitle("Injector");
    int PID = -1;
    char *dll = new char[255];

    getDlLpath(dll);
    getPID(&PID);

    InjectDLL(PID, dll);
    system("pause");

    return 0;
}