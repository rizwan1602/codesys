# README: CODESYS Structured Text (ST) Program

## Overview
Demonstrates **OOP concepts** (Encapsulation, Inheritance, Polymorphism) in **Structured Text (ST)** for **robot operations in a paintshop**.

## Features
- **Encapsulation**: Private variables `xaxis`, `yaxis` for robot positions.
- **Inheritance**: `Clearcoat` extends `Basecoat`, inheriting methods.
- **Polymorphism**: Generic function `robot(coat: Basecoat)` calls `robot1start()`.

## Program Structure
### **1️⃣ Basecoat**
- **Methods:** `robot1start()`, `robot2start()`, `changeaxis()`, `getaxis()`.

### **2️⃣ Clearcoat (Inherits Basecoat)**
- **New Method:** `robot3start()`.

### **3️⃣ Polymorphism**
- Function `robot(coat: Basecoat)` calls `robot1start()` dynamically.

## Usage
1. **Load the program** in CODESYS.
2. **Run the main execution code**.
3. **Check output in the debug console**.

## Example Output
```
🤖 Robot 1 started
📌 Position: X = 10, Y = 20
🤖 Robot 3 started
🤖 Robot 1 started
```

## Author
**Syed Rizwan Ahmed** 🚀

