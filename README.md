# dk.brics.automaton

[![](https://jitpack.io/v/org.sireum/automaton.svg)](https://jitpack.io/#org.sireum/automaton)

Copyright (C) 2001-2022 Anders Møller

This source code in this package may be used under the terms of the
BSD license.  Please read the file 'COPYING' for details.

This package contains a full DFA/NFA implementation with Unicode
alphabet and support for all standard regular expression operations.

For more information, go to the package home page at
https://www.brics.dk/automaton/.


Anders Møller,
amoeller@cs.au.dk

## Notes

* This fork adapted the [original](https://github.com/cs-au-dk/dk.brics.automaton) to use codepoint (`int`)transitions
  (instead of `char`).

* The jar and javadoc files can be built using [Sireum Proyek](https://github.com/sireum/proyek-example).
