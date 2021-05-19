#!/usr/bin/python

import sys
import re
from submodules.rules import rules

def main():
   print("Welcome to post-merge hook!")

   i = 1
   for arg in sys.argv:
      print("Argument " + str(i) + ": " + arg)
      i = i + 1

   sys.exit(0)


if __name__ == "__main__":
	main()