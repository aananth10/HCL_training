# COBOL Programs

This folder contains 30 separate COBOL training programs. Each program has its own source file and can be compiled independently.

## Programs

| No. | Program                     | Purpose                       |
| --- | --------------------------- | ----------------------------- |
| 01  | hello_world                 | Basic COBOL output            |
| 02  | add_two_numbers             | Addition                      |
| 03  | subtract_two_numbers        | Subtraction                   |
| 04  | multiply_two_numbers        | Multiplication                |
| 05  | divide_two_numbers          | Division                      |
| 06  | even_or_odd                 | Parity check                  |
| 07  | largest_of_three            | Largest of three values       |
| 08  | factorial                   | Factorial calculation         |
| 09  | fibonacci                   | Fibonacci sequence            |
| 10  | sum_one_to_n                | Sum a range                   |
| 11  | prime_check                 | Prime number check            |
| 12  | palindrome_number           | Number palindrome check       |
| 13  | reverse_string              | Reverse text                  |
| 14  | vowel_count                 | Count vowels                  |
| 15  | string_length               | Text length                   |
| 16  | array_average               | Array average                 |
| 17  | find_max_in_array           | Maximum array value           |
| 18  | linear_search               | Linear search                 |
| 19  | bubble_sort                 | Bubble sort                   |
| 20  | employee_pay                | Gross pay                     |
| 21  | grade_calculator            | Grade calculation             |
| 22  | simple_interest             | Simple interest               |
| 23  | compound_interest           | Compound interest             |
| 24  | temperature_converter       | Celsius to Fahrenheit         |
| 25  | swap_numbers                | Swap two values               |
| 26  | count_digits                | Count digits                  |
| 27  | number_table                | Multiplication table          |
| 28  | leap_year                   | Leap-year check               |
| 29  | bank_deposit_withdraw       | Basic bank balance operations |
| 30  | suspicious_transaction_rule | Transaction rule engine       |

## Compile a program

With GnuCOBOL:

```powershell
cobc -x -o hello_world .\01_hello_world.cbl
.\hello_world.exe
```
