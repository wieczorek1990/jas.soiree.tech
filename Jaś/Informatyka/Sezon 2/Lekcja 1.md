# Git, Python, Docker

## Git
Source Code Management (SCM): zarządzanie kodem źródłowym.

Strona [Git SCM](https://git-scm.com) zawiera oprogramowanie Git.

Można je ściągnąć z [podstrony pobierania](https://git-scm.com/downloads).

## Wprowadzenie do terminala

```shell
# Wejście do katalogu domowego
cd
# Wyświetlenie ścieżki katalogu roboczego
pwd
# Wylistowanie plików
ls
# Wylistowanie plików z uwzględnieniem ukrytych
ls -a
# Utworzenie katalogu
mkdir Software/
# Zmiana katalogu
cd Software/
# Utworzenie pustego pliku
touch Notes.md
# Usuwanie katalogu
mkdir Test/
rmdir Test/
# Usuwanie niepustego katalogu
mkdir Test/
touch Test/Test.md
rm -rf Test/
```

## Zarządznie wersjami

```shell
# Utworzenie katalogu
mkdir Directory/
# Zmiana katalogu
cd Directory/
# Zainicjowanie repozytorium
git init
# Sprawdzenie statusu repozytorium
git status
# Dodanie źródła
git remote add origin git@github.com:wieczorek1990/gitl.git
# Ustawienie źródła istniejącego
git remote set-url origin git@github.com:wieczorek1990/gitl.git
# Utworzenie pliku
touch README.md
# Dodanie pliku do zmian śledzonych
git add README.md
# Zatwierdzenie zmian z wiadomością
git commit -m "Initial commit."
# Pociagnięcie źródła
git pull
# Wypchnięcie źródła
git push
```

## Python

Strona domowa projektu Python jest [tu](https://www.python.org).

Strona [ta](https://www.python.org/downloads/) zawiera instalatory.

```python
# Wypisanie paska znaków
print("Hello, world!")
# Zaimportowanie modułu sys
import sys
# Użycie zmiennej z modułu sys
print(sys.argv)
# Wywołanie metody len
print(len(sys.argv))
# Definicja funkcji sumującej
def sum(a, b): return a + b
```

## Docker

Strona domowa projektu Docker jest [tu](https://www.docker.com).

```shell
# Pociagnięcie obrazu Python
docker pull python:3.13-rc-alpine
# Uruchomienie obrazu Python
docker run -it python:3.13-rc-alpine
# Uruchomienie sh w kontenerze Python
docker run -it python:3.13-rc-alpine sh
# Uruchomienie sh w kontenerze Python z wolumenem danych monotowanym w /app/
docker run -it -v $PWD:/app/ python:3.13-rc-alpine sh
# Przejście do /app/
cd /app/
# Uruchomienie vi
vi
# Wyjście z vi
:q
# Dodanie vim
apk add vim
# Uruchomienie vim
vim
# Zapisanie pliku w vim
:w nazwa_pliku.rozszerzenie
# Wylistowanie zainstalowanych pakietów oprogramowania
apk info
# Policzenie zainstalowanych pakietów oprogramowania
apk info | wc -l
```

Plik Dockerfile służy do definiowania obrazu.

```Dockerfile
FROM python:3.13-rc-alpine

CMD ["echo", "Hello, world!"]
```

```shell
# Budowanie lokalnego obrazu
docker build . -t echo
# Uruchomienie lokalnego obrazu
docker run echo
```

## Zadania

### Zadanie 1.

Ściagnąć Git, Python, Docker.

### Zadanie 2.

Sklonować [gitl](https://github.com/wieczorek1990/gitl/) i uruchomić.

### Zadanie 3.

Napisać kalkulator kwoty brutto i netto faktury przy podaniu stawki godzinowej i liczby godzin.
Kalkulator powienien formatować kwoty do dwóch miejsc po przecinku.

### Zadanie 4.

Napisać zgadywacz liczb w Python, który losuje liczbę z zakresu 1..9 i pobiera liczbę użytkownika aż liczba zostanie zgadnięta.

### Zadanie 5.

Uruchomić minimalną aplikację Flask w Docker.
Ustaw host `0.0.0.0` i port `5000`.
