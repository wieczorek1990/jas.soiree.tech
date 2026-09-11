#!/usr/bin/env python3
# Generates index for Jaś.
import glob
import os


def trim_something(something):	
	if something[-1] == "/":
		return something[:-1]
	return something


def traverse_till_leaves(something, level):
	if os.path.isfile(something):
		url = something
		print(f"* [{something}](<{url}>)")
	elif os.path.isdir(something):
		dir_something = trim_something(something)
		next_level = level + 1
		print("#" * next_level + f" {dir_something}")
		for something in sorted(glob.glob(f"{something}/*")):
			traverse_till_leaves(something, next_level)


print("# Jaś")
print("Words, math, IT, and some else things.")
for something in sorted(glob.glob("Jaś/**", recursive=True)):
	traverse_till_leaves(something, level=1)
