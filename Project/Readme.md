# 🚀 RYNEX Language (Flex-Based Mini Interpreter)

RYNEX is a simple **custom interpreter language** built using **Flex (Lexical Analyzer)** in C.  
It supports arithmetic operations, mathematical functions, comparisons, and utility commands like HELP.

---

## 📌 Features

### ➕ Arithmetic Operations
- `Addixx(a,b)` → Addition
- `Subixx(a,b)` → Subtraction
- `Multixx(a,b)` → Multiplication
- `Divixx(a,b)` → Division (with zero-check)
- `Modixx(a,b)` → Modulus
- `Powerix(a,b)` → Power

---

### 📐 Mathematical Functions
- `Sqrtixx(n)` → Square root
- `Absvall(n)` → Absolute value
- `Logvall(n)` → Log base 10
- `Sinvall(n)` → Sine (degrees)
- `Cosvall(n)` → Cosine (degrees)
- `Tanvall(n)` → Tangent (degrees)

---

### 🔢 Utility Functions
- `Factvall(n)` → Factorial
- `Incvall(n)` → Increment
- `Decvall(n)` → Decrement
- `Randvall()` → Random number (0–99)

---

### 📊 Comparison Functions
- `Maxvall(a,b)` → Maximum
- `Minvall(a,b)` → Minimum
- `Comparexx(a,b)` → Compare values
- `Isequall(a,b)` → Equal check
- `Notequall(a,b)` → Not equal check
- `Isgreaterr(a,b)` → Greater check
- `Islesss(a,b)` → Less check

---

### 🔁 Rounding Functions
- `Roundvall(x)` → Round value
- `Floorvall(x)` → Floor value
- `Ceilvall(x)` → Ceiling value

---

### 🆘 Help Command
- `HELP()` → Displays all available functions and usage examples

---

## ⚙️ How to Compile

```bash
flex raiyan.l
gcc lex.yy.c -o raiyan
./raiyan
```

---

## 👨‍💻 Author

Md. Raiyan

---

## ⭐ Notes

- Only integer inputs are fully supported in most functions
- Trigonometric functions use **degrees**
- Random range: 0–99

---

## 🚀 License

For educational purposes only.
