{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = {
        name = "enumeration";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Eric McCorkle.  All rights reserved.";
      maintainer = "Eric McCorkle <emc2@metricspace.net>";
      author = "Eric McCorkle";
      homepage = "https://github.com/emc2/enumeration";
      url = "";
      synopsis = "A practical API for building recursive enumeration\nprocedures and enumerating datatypes.";
      description = "A library providing tools for building enumeration procedures for recursively-\nenumerable datatypes.  This is built atop the arith-encode library, and makes\nuse of the natural number isomorphisms it provides to represent individual\ndecisions in the enumeration procedure.  As such, each enumeration result is\ndenoted by a unique path, consisting of a sequence of natural numbers.  An\nenumeration procedure is simply a (partial) mapping between sequences\nand a given datatype.\n\nThe library provides functionality for constructing enumeration procedures,\nas well as facilities for performing enumeration according to various search\nstrategies (depth-first, breadth-first, etc).  These procedures can also be\n\"warm-started\" using a path or a set of paths.  Obvious applications include\nexhaustive search, testing, automated proving, and others.\n\nAdditionally, as a path is simply a sequence of natural numbers, an\nenumeration procedure can double as a binary serializer/deserializer.  For\nwell-behaved enumeration procedures (ie. those where the mapping is an\nisomorphism), the resulting binary format should be very nearly succinct.\n\nThis is the first release candidate for 1.0 (initial release)";
      buildType = "Simple";
    };
    components = {
      "enumeration" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.arith-encode)
          (hsPkgs.binary)
          (hsPkgs.arithmoi)
          (hsPkgs.heap)
        ];
      };
      tests = {
        "UnitTest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.HUnit-Plus)
            (hsPkgs.arith-encode)
            (hsPkgs.containers)
            (hsPkgs.binary)
            (hsPkgs.arithmoi)
            (hsPkgs.heap)
          ];
        };
      };
    };
  }