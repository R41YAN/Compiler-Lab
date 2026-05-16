# 🚀 RYNEX Language v2

RYNEX is a simple **custom interpreter language** built using **Flex (Lexical Analyzer)** in C.  
It supports arithmetic operations, mathematical functions, comparisons, and an **interactive numbered menu system**.

---

## 🆕 What's New in v2

| Feature | v1 | v2 |
|---|---|---|
| Help command | `HELP()` only | `H` or `HELP()` |
| Function selection | Full syntax only | **Number shortcut (1–27)** |
| Input style | All-in-one (`Addixx(10,5)`) | Interactive (`a = ?`, `b = ?`) |
| After each result | Program waits silently | Prints `Enter Command:` |
| Function feedback | None | Shows `[ Addixx() selected ]` |
| Session | Runs once | **Loops until `Q` is pressed** |

---

## 📌 Features

### ➕ Arithmetic Operations

| # | Function | Description |
|---|---|---|
| 1 | `Addixx(a, b)` | Addition |
| 2 | `Subixx(a, b)` | Subtraction |
| 3 | `Multixx(a, b)` | Multiplication |
| 4 | `Divixx(a, b)` | Division (with zero-check) |
| 5 | `Modixx(a, b)` | Modulus |
| 6 | `Powerix(a, b)` | Power / Exponentiation |

---

### 📐 Mathematical Functions

| # | Function | Description |
|---|---|---|
| 7 | `Sqrtixx(n)` | Square root |
| 8 | `Absvall(n)` | Absolute value |
| 15 | `Logvall(n)` | Logarithm (base 10) |
| 16 | `Sinvall(n)` | Sine (in degrees) |
| 17 | `Cosvall(n)` | Cosine (in degrees) |
| 18 | `Tanvall(n)` | Tangent (in degrees) |

---

### 🔢 Utility Functions

| # | Function | Description |
|---|---|---|
| 12 | `Incvall(n)` | Increment (n + 1) |
| 13 | `Decvall(n)` | Decrement (n - 1) |
| 14 | `Factvall(n)` | Factorial |
| 19 | `Randvall()` | Random number (0–99) |

---

### 📊 Comparison & Statistics Functions

| # | Function | Description |
|---|---|---|
| 9 | `Maxvall(a, b)` | Returns the maximum |
| 10 | `Minvall(a, b)` | Returns the minimum |
| 11 | `Avgvall(a, b)` | Average of two numbers |
| 23 | `Comparexx(a, b)` | Compares two values, prints the greater |
| 24 | `Isequall(a, b)` | Equal check |
| 25 | `Notequall(a, b)` | Not equal check |
| 26 | `Isgreaterr(a, b)` | Greater than check |
| 27 | `Islesss(a, b)` | Less than check |

---

### 🔁 Rounding Functions

| # | Function | Description |
|---|---|---|
| 20 | `Roundvall(x)` | Round to nearest integer |
| 21 | `Floorvall(x)` | Floor (round down) |
| 22 | `Ceilvall(x)` | Ceiling (round up) |

---

### 🆘 Help & Control Commands

| Command | Description |
|---|---|
| `H` | Displays the numbered help menu (shortcut) |
| `HELP()` | Same as `H` — displays all available functions |
| `Q` | Exits the RYNEX interpreter |

---

## ⚙️ How to Compile & Run

> **Prerequisites:** Make sure `flex` and `gcc` are installed on your system.

```bash
# Step 1: Generate C source from Flex file
flex raiyan.l

# Step 2: Compile the generated C file
gcc lex.yy.c -o rynex -lm

# Step 3: Run the interpreter
./rynex
```

> **Note:** The `-lm` flag links the math library, required for functions like `sqrt`, `log10`, `sin`, `cos`, `tan`, `pow`, `round`, `floor`, and `ceil`.

---

## 📁 Project Structure

```
.
├── raiyan.l       # Flex source file — all language rules, logic, and main()
├── lex.yy.c       # Auto-generated C file from Flex (do not edit manually)
├── rynex.exe      # Compiled executable (Windows) / rynex (Linux/macOS)
└── README.md      # Project documentation
```

---

## 📝 Usage Examples

### Method 1 — Direct Full Syntax
Type the full function call directly and press Enter:
```
Enter Command: Addixx(10,5)
Result = 15

Enter Command: Divixx(10,0)
Math Error: Division by zero

Enter Command: Sqrtixx(144)
Result = 12.00

Enter Command: Sinvall(90)
Result = 1.0000

Enter Command: Factvall(5)
Result = 120

Enter Command: Randvall()
Result = 47
```

### Method 2 — Number Shortcut (New in v2)
Press the function's number and enter inputs one by one:
```
Enter Command: 1

[ Addixx() selected ]
  a = 10
  b = 5
Result = 15

Enter Command: 6

[ Powerix() selected ]
  a = 3
  b = 4
Result = 81

Enter Command: 19

[ Randvall() selected ]
Result = 63
```

### Help Menu
```
Enter Command: H

╔══════════════════════════════════════╗
║         RYNEX HELP MENU              ║
╠══════════════════════════════════════╣
║  1.  Addixx(a,b)    → Add            ║
║  2.  Subixx(a,b)    → Subtract       ║
║  ...                                 ║
║ 27.  Islesss(a,b)   → Less?          ║
╠══════════════════════════════════════╣
║  H → Help   Q → Quit                 ║
╚══════════════════════════════════════╝
```

---

## ⭐ Notes

- Supports **two input modes**: full syntax (e.g., `Addixx(10,5)`) or number shortcut (e.g., `1`).
- Only **integer inputs** are supported in most functions. Rounding functions (`Roundvall`, `Floorvall`, `Ceilvall`) accept **decimal inputs**.
- Trigonometric functions (`Sinvall`, `Cosvall`, `Tanvall`) accept values in **degrees**, not radians.
- `Randvall()` generates a random integer in the range **0–99**, seeded at startup with `time(NULL)`.
- `Divixx(a, b)` includes a **zero-division guard** and prints an error instead of crashing.
- Any unrecognized input prints `Invalid Syntax` and prompts for the next command.
- Press **`Q`** to exit. The program will not close on its own after a function runs.

---

## 👨‍💻 Author

**R41YAN**

---

## 📄 License

This project is for **educational purposes only**.
