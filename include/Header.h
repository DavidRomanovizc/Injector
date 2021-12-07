#pragma once

#include <iostream>
#include <Windows.h>
#include <iostream>


int InjectDLL(DWORD, char *);

int getDlLpath(char *);

int getPID(int *);

int getProcess(HANDLE *, DWORD);


int getDlLpath(char *dll) {
    std::cout << "Enter the path to DLL file\n";
    std::cin >> dll;

    return 1;
}


int getPID(int *PID) {
    std::cout << "Enter the PID to your target process\n";
    std::cin >> *PID;

    return 1;
}


int getProcess(HANDLE *handleToProc, DWORD pid) {
    *handleToProc = OpenProcess(PROCESS_ALL_ACCESS, false, pid);
    DWORD dwLastError = GetLastError();

    if (*handleToProc == nullptr) {
        std::cout << "Unable to open process.\n";
        return -1;
    } else {
        std::cout << "Process Opened.\n";
        return 1;
    }
}


int InjectDLL(DWORD PID, char *dll) {
    HANDLE handleToproc;
    LPVOID LoadLibAddr;
    LPVOID baseAddr;
    HANDLE remThread;

    int dllLength = strlen(dll) + 1;

    if (getProcess(&handleToproc, PID) < 0) {
        return -1;
    }

    LoadLibAddr = (LPVOID) GetProcAddress(GetModuleHandleA("kernel32.dll"), "LoadLibraryA");

    if (!LoadLibAddr) {
        return -1;
    }

    baseAddr = VirtualAllocEx(handleToproc, nullptr, dllLength, MEM_COMMIT | MEM_RESERVE, PAGE_EXECUTE_READWRITE);

    if (!baseAddr) {
        return -1;
    }

    if (!WriteProcessMemory(handleToproc, baseAddr, dll, dllLength, nullptr)) {
        return -1;
    }

    remThread = CreateRemoteThread(handleToproc, nullptr, 0, (LPTHREAD_START_ROUTINE) LoadLibAddr, baseAddr, 0,
                                   nullptr);

    if (!remThread) {
        return -1;
    }

    WaitForSingleObject(remThread, INFINITE);

    VirtualFreeEx(handleToproc, baseAddr, dllLength, MEM_RELEASE);

    if (CloseHandle(remThread) == 0) {
        std::cout << "Failed to close to remote thread.\n";
        return -1;
    }

    if (CloseHandle(handleToproc) == 0) {
        std::cout << "Failed to close handle to target process.\n";
        return -1;
    }
}