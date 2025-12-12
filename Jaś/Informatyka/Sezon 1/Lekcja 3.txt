W tej lekcji zajmiemy się klasami danych.

Klasy danych to udekorowane klasy, które przechowują dane.

Dekorator funkcji to funkcja która otacza wykonanie funkcji dekorowanej np.:

```
>>> def sum_of_two(x, y):
...   return x + y
...
>>> sum_of_two(1, 2)
3
>>> def debugger(f):
...   def wrapper(x, y):
...      print(f'Adding {x} and {y}')
...      return f(x, y)
...   return wrapper
...
>>> @debugger
... def sum_of_two(x, y):
...   return x + y
...
>>> sum_of_two(1, 2)
Adding 1 and 2
3
```

W powyższym kodzie używamy paska znaków ze zmiennymi:
```
f'Adding {x} and {y}'
```

Spowoduje to wklejenie zmiennych do paska znaków.

Na początku przykładu definiujemy metodę `sum_of_two` i wywołujemy ją na argumentach 1 i 2, co daje wynik 3. Następnie definiujemy dekorator debugger, który przyjmuje funkcję dekorowaną `f` i zwraca funkcję otaczającą `wrapper`. Funkcja `wrapper` przyjmuje te same parametry co funkcja dekorowana `sum_of_two` i dodaje drukowanie wiadomości o parametrach funkcji.

Jako, że chcemy mieć na konsoli informacje o dodawanych liczbach, a nie tylko o wyniku dekorujemy funkcję `sum_of_two` poprzez użycie `@debugger` przed jej powtórną definicją w konsoli. Ponowne wywołanie wywołuje kod funkcji `wrapper`. Funkcja jest już udekorowana.

W nowoczesnym Pythonie można także dekorować klasy. Przydatny dekorator klas to `dataclass`. Gdy potrzebujemy klasę przechowującą głównie dane możemy ją zdefiniować poprzez dekorowanie z użyciem `dataclass` i podaniem pól i ich typów oraz wartości domyślnych.

```
>>> from dataclasses import dataclass
>>> @dataclass
... class Point:
...   x : int
...   y : int
...   z : int = 0
...
>>> p = Point(0, 0)
>>> p
Point(x=0, y=0, z=0)
>>> p = Point(1, 1, 1)
>>> p
Point(x=1, y=1, z=1)
```

W przykładzie definiujemy klasę `Point`, czyli punkt, która ma pola `x`, `y`, `z`, gdzie `z` ma wartość domyślną `0`. Podajemy argumenty do inicjalizacji zgodnie z kolejnością pól w klasie.

Zadanie 1.
Napisz klasę danych dla zabierania adresów.
Odpowiedź:

```
@dataclass
class Address:
  person : str
  street : str
  city : str
  postal_code : str
  country : str
```
