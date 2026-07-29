Zadanie 1.

Mishi ma problem w liczeniu jabłek, bo Zimi się skaleczył.
Napisz proces liczenia jabłek Shimim i Mijashimim.
Mishi to właściciel sadu, Zimi to szybki robotnik,
Shimi to zwyczajny robotnik, Mijashimi to ojciec Shimiego.

```
import dataclasses
import enum


class WorkerType(enum.Enum):
    GARDEN_OWNER = 0
    FAST_WORKER = 1
    WORKER = 2
    OLD_WORKER = 3


class Person:
    def __init__(self, name: str, worker_type: WorkerType) -> None:
        self.name = name

    def take_apple_from_tree(self) -> None:
        ...


shimi = Person("Shimi", WorkerType.WORKER)
mijashimi = Person("Mijshimi", WorkerType.OLD_WORKER)


@dataclasses.dataclass
class Box:
    x: int
    y: int
    z: int

    def move(self) -> None:
        ...


@dataclasses.dataclass
class Cart:
    x: int
    y: int
    z: int

    def move(self) -> None:
        ...


class Apple:
    ...


class Tree:
    apples: list[Apple] = []

    def grow_apples(self) -> None:
        ...

    ...


class Garden:
    trees: list[Tree] = []

    def place_avialable(self) -> bool:
        ...

    def plant_tree(self) -> None:
        ...

    def plant_trees(self) -> None:
        while self.place_avialable():
            self.plant_tree()
```
