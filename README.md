# libft
## Overview
This project is a part of the curriculum at 42 School and aims to create a static library called `libft`. The library provides a collection of useful functions commonly used in C programming, designed to simplify common tasks.
The `libft` library includes functions for string manipulation, memory management, character handling, and linked list operations.

## Features

- String manipulation: Functions for string length, comparison, searching, concatenation, extraction, and modification.
- Character operations: Utilities for character classification, case conversion, and ASCII value manipulation.
- Memory management: Functions for memory allocation, copying, filling, and comparison.
- Conversion and manipulation: Tools for converting strings to integers, allocating and joining substrings, and more.
- Linked list operations (bonus): Additional functions for creating, manipulating, and traversing linked lists.

## Getting Started

To utilize the `libft` library in your own projects, follow these steps:

1. Clone the repository: `git clone https://github.com/ruippeixe/libft.git`.
2. Navigate to the `libft` directory.
3. Compile the library: `make` or `make bonus`.
4. Include the header file `libft.h` in your source code.
5. Link against `libft.a` when compiling your program.
6. Start using the library functions in your code!

## Example Usage

Here's an example that demonstrates the usage of `libft` functions:

```c
#include "libft.h"

int main(void) {
    char str[] = "Hello, world!";
    int length = ft_strlen(str);
    printf("The length of the string is: %d\n", length);

    return 0;
}
```

## Contact
For any inquiries or feedback regarding this project, please contact [rpp@ruippeixe.com](mailto:rpp@ruippeixe.com).

Thank you for your interest!
