#include <stdio.h>

#include "c11threads.h"

#include "simple_compiler.h"
#include "simple_runtime.h"

//TODO Naming convention.
//TODO spdlog?
int main(void) {
    printf("Simple Script start at .\n"); //TODO Add date.
	
    //TODO Remove!
    printf("%i\n", (int) 0.4);
    printf("%i\n", (int) 0.5);
    printf("%i\n", (int) 0.6);
    printf("%i\n", (int) 0.7);
    printf("%i\n", (int) 0.9345763287456238);
    //

    
	
    return 0;
}

void *thread_task(void *item) {
    return NULL;
}
