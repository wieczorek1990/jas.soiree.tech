#!/usr/bin/env python3
# Generates index for Jaś.
import glob
import os


def traverse_till_leaves(something, level):
    if os.path.isfile(something):
        url = something
        print(f"* [{something}](<{url}>)")
    elif os.path.isdir(something):
        next_level = level + 1
        print("#" * next_level + f" {something}")
        for in_something in sorted(glob.glob(f"{something}/*")):
            traverse_till_leaves(in_something, next_level)


def main() -> None:
    print("# Jaś")
    print("Words, math, IT, and some else things.")

    for something in sorted(glob.glob("Jaś/*", recursive=True)):
        traverse_till_leaves(something, level=1)


if __name__ == "__main__":
    main()
