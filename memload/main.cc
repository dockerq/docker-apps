#include <iostream>
#include <stdio.h>
#include <vector>
#include <unistd.h>

using namespace std;

const long GB = 1024*1024*1024;

int main(int argc, char* argv[]) {
    if(argc != 2) {
        printf("plz input one paramenter...\n");
        return -1;
    }
    // 数字，表示MB
    int mbyte = atoi(argv[1]);
    printf("mbyte is %d\n", mbyte);
    if(mbyte<=0 || mbyte>GB) {
        printf("mbyte %d is invalid.\n", mbyte);
    }
    int total = 1024*1024*mbyte; // 如果mbyte是200，表示200M
    size_t base = sizeof(int);
    vector<int> arr(total/base, 1);

    while(true) {
        int size = arr.size();
        printf("size is %d\n", size);
        sleep(10);
    }

    return 0;
}