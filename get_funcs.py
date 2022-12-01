#!/bin/bash/python3

import os
import sys

def find_functions(path):
    functions_types = [
        "double", "void", "int", "char", "float",
        "long", "short", "unsigned", "signed", "bool"
    ]
    functions = []
    for file in os.listdir(path):
        if file.endswith(".c"):
            with open(f"{path}{file}", "r") as f:
                for line in f:
                    if line.startswith(tuple(functions_types)):
                        functions.append(line.strip())
    for function in functions:
        if function.endswith("{"):
            functions[functions.index(function)] = function[:-2]
    for function in functions:
        functions[functions.index(function)] = function + ";"
    for function in functions:
        if "=" in function:
            functions.remove(function)
    return functions
