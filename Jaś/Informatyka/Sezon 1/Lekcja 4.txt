ASCII (American Standard Code for Information Interchange) to standard kodowania znaków. Przypisuje on znaczenia kodom z zakresu 0 - 127, czyli jest 7-bitowy.

Poniżej ważne liczby dla standardu.

Liczba/Zakres liczbowy : Znaczenie w standardzie

0 : Null
8 : Backspace
10 : Line Feed
13: Carriage Return
27 : Escape
32 : Space
48-57 : 0-9 (cyfry)
65-90 : A-Z (alfabet kapitalizowany)
97-122 : a-z (alfabet małymi)

Zadanie 1.
Jakie kody ASCII wyślemy, jeżeli kodujemy pasek znaków 'Ala ma kota'?

Odpowiedź:
```
>>> for character in 'Ala ma kota':
...   print(ord(character))
...
65
108
97
32
109
97
32
107
111
116
97
```
