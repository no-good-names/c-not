#ifndef CALCULATOR_H
#define CALCULATOR_H

#include "maintype.h"

class Calculator {
public:
    Calculator();
    ~Calculator();

    f32 add(f32 a, f32 b);
    f32 sub(f32 a, f32 b);
    f32 mul(f32 a, f32 b);
    f32 div(f32 a, f32 b);
};

f32 result;

#endif // CALCULATOR_H
