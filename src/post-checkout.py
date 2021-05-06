#!/usr/bin/python

import sys
import re
from submodules.rules import rules

def main():
   i = 1
   print("Welcome to post-commit hook!")
   for arg in sys.argv:
      print("Argument " + str(i) + ": " + arg)
   sys.exit(0)


if __name__ == "__main__":
	main()