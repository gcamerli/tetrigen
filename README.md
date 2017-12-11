# **Tetrigen**

42 (Paris)

### **Description**

![tetriminos](img/tetriminos.svg)

**Tetrigen** is a random tetriminos generator written in **C**, with the purpose
of creating unit test files for **42** fillit project.

### **Usage**

To build:

```bash
$ make
```

To execute:

```bash
$ ./tetrigen [option 1] [option 2] [number]
```

Example:

```bash
$ ./tetrigen -v -f 26
```

The output of this example will be a valid file of 26 tetriminos saved in **test.fillit**.

### **Options**

**[options #1]**
+ -v: valid map
+ -i: invalid map

**[options #2]**
+ -f: write the map in a file (test.fillit)
+ -s: send the map directly to the stdin

**[number]**
+ Select between 1 and 26 tetriminos per file.

### **Credits**

+ [hqro](https://github.com/hqro)

### **CC License**

This work is provided under the terms of this license: [Creative Commons Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/)
