#include <iostream>
#include <stdio.h>
#include <vector>
#include <unistd.h>

using namespace std;

int main() {
    int total = 1024*1024*200; // 200M
    size_t base = sizeof(int);
    vector<int> arr(total/base, 1);
    while(true) {
        int size = arr.size();
        printf("size is %d\n", size);
        sleep(10);
    }

    return 0;
}