# Obfuscation-Demo
Demonstrates how to access, from Swift code, Objective-C classes and methods whose names are obfuscated at runtime (using compile-time `#define`s) with human-readable names in the source code.  

---

Objective-C class and method names are present in the binary as plain strings, and available at runtime. This is to support the language's runtime features such as reflection and dynamic dispatch. 

In order to hide the names of sensitive classes and methods from malicious reverse engineering, an obfuscation scheme can be employed that replaces the target names with meaningless, garbled text at compile time, using preprocessor macros.

This allows programmers working on the source code to refer to the classes and methods by their human-readable, contextual names (e.g., `AccountManager`), while still turning them into meaningless strings in the binary (e.g., `TEWhYyXaCdGrCViPbZZHWXoBiUPvPn`).

The problem with this approach is that, because the `#define` preprocesor string replacement does not extend to Swift source files, Swift code interacting with the obfuscated Objective-C classes needs to use the obfuscated names; for example:

    let accountManager = TEWhYyXaCdGrCViPbZZHWXoBiUPvPn()
    
...instead of the more convenient:

    let accountManager = AccountManager()
    
This sample project demonstrates a way to wrap Objective-C class objects and selectors into accessor C functions, which are both:

  1. Accessible from Swift source code by their source-code (human readable) name, and
  2. Compiled fully into binary machine instructions, with the potentially revealing function name completely absent form the binary.


