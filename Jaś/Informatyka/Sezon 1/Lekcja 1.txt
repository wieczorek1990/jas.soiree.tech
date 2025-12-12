Język Python to język programowania wysokiego poziomu, który upraszcza pisanie programów skryptowych, powstał w latach dziewięćdziesiątych dwudziestego wieku i jest dalej rozwijany (rok 2022).

Nauczymy się używać podstawowych konstruktów języka.

Funkcja:

```
def sum(first_argument, second_argument):
    return first_argument + second_argument
```

Powyższa funkcja zwraca sumę dwóch argumentów.
Tworzenie definicji funkcji uzyskujemy z użyciem słowa kluczowego `def`.
Zwracanie wyniku funkcji uzyskujemy z użyciem słowa kluczowego `return`.

Klasa:

```
class Animal:
    def say(self):
        raise NotImplementedError


class Cat(Animal):
    def say(self):
        print('Meow!')


class Dog(Animal):
    def say(self):
        print('How how!')
```

Klasa `Animal` zawiera metodę abstrakcyjną do mówienia.
Klasy dziedziczące z `Animal` implementują metodę mówienia w sposobie dla kota i psa.

Inicjalizacja klasy:

```
class Animal:
    def __init__(self, name):
        self.name = name


animal = Animal("Bonia")
print(animal.name)
```

Używamy tak zwanego slotu, czyli metody inicjalizującej `__init__`, aby ustawić imię zwierzęcia. Imię jest dostępne jako `self.name` w metodach klasy `Animal`.
