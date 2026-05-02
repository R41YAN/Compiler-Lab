# 🚀 RYNEX Language

RYNEX is a simple **custom interpreter language** built using **Flex (Lexical Analyzer)** in C.  
It supports arithmetic operations, mathematical functions, comparisons, and utility commands like `HELP`.

---

## 📌 Features

### ➕ Arithmetic Operations

| Function | Description |
|---|---|
| `Addixx(a, b)` | Addition |
| `Subixx(a, b)` | Subtraction |
| `Multixx(a, b)` | Multiplication |
| `Divixx(a, b)` | Division (with zero-check) |
| `Modixx(a, b)` | Modulus |
| `Powerix(a, b)` | Power / Exponentiation |

---

### 📐 Mathematical Functions

| Function | Description |
|---|---|
| `Sqrtixx(n)` | Square root |
| `Absvall(n)` | Absolute value |
| `Logvall(n)` | Logarithm (base 10) |
| `Sinvall(n)` | Sine (in degrees) |
| `Cosvall(n)` | Cosine (in degrees) |
| `Tanvall(n)` | Tangent (in degrees) |

---

### 🔢 Utility Functions

| Function | Description |
|---|---|
| `Factvall(n)` | Factorial |
| `Incvall(n)` | Increment (n + 1) |
| `Decvall(n)` | Decrement (n - 1) |
| `Randvall()` | Random number (0–99) |

---

### 📊 Comparison Functions

| Function | Description |
|---|---|
| `Maxvall(a, b)` | Returns the maximum |
| `Minvall(a, b)` | Returns the minimum |
| `Comparexx(a, b)` | Compares two values |
| `Isequall(a, b)` | Equal check |
| `Notequall(a, b)` | Not equal check |
| `Isgreaterr(a, b)` | Greater than check |
| `Islesss(a, b)` | Less than check |

---

### 🔁 Rounding Functions

| Function | Description |
|---|---|
| `Roundvall(x)` | Round to nearest integer |
| `Floorvall(x)` | Floor (round down) |
| `Ceilvall(x)` | Ceiling (round up) |

---

### 🆘 Help Command

| Command | Description |
|---|---|
| `HELP()` | Displays all available functions and usage examples |

---

## ⚙️ How to Compile & Run

> **Prerequisites:** Make sure `flex` and `gcc` are installed on your system.

```bash
# Step 1: Generate C source from Flex file
flex raiyan.l

# Step 2: Compile the generated C file
gcc lex.yy.c -o raiyan -lm

# Step 3: Run the interpreter
./raiyan
```

> **Note:** The `-lm` flag links the math library, required for functions like `sqrt`, `log`, `sin`, etc.

---

## 📁 Project Structure

```
.
├── raiyan.l       # Lex/Flex source file (main language rules & logic)
├── lex.yy.c       # Generated C file from Flex (do not edit manually)
├── raiyan.exe     # Compiled executable (Windows) / raiyan (Linux/macOS)
└── README.md      # Project documentation
```

---

## 📝 Usage Examples

```
Addixx(10, 5)       → 15
Divixx(10, 0)       → Error: Division by zero
Sqrtixx(16)         → 4.000000
Sinvall(90)         → 1.000000
Factvall(5)         → 120
Randvall()          → 42  (random)
HELP()              → Lists all functions
```

---

## ⭐ Notes

- Only **integer inputs** are fully supported in most functions.
- Trigonometric functions (`Sinvall`, `Cosvall`, `Tanvall`) accept values in **degrees**.
- `Randvall()` generates a random integer in the range **0–99**.
- `Divixx(a, b)` includes a **zero-division guard** and will report an error instead of crashing.

---

## 👨‍💻 Author

**R41YAN**

---

## 📄 License

This project is for **educational purposes only**.
