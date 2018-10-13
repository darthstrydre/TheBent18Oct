//#include <stdio.h>
#include <iostream>
#include <thread>
#include <mutex>

std::mutex print_mutex;

static const int num_threads = 10;

void prin (int W) {
    std::lock_guard<std::mutex> lock(print_mutex);
    std::cout << "Hello, World" << W << std::endl;
}

void call_from_thread(int W) {
prin(W);
}




int main() {
    std::thread t[num_threads];

    for (int i = 0; i < num_threads; ++i) {
        t[i] = std::thread(call_from_thread, i);
    }
    
    for (int i = 0; i < num_threads; ++i) {
        t[i].join();
    }

    return 0;
}