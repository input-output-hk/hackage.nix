{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.1.0";
      identifier = {
        name = "lvmlib";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012";
      maintainer = "helium@cs.uu.nl";
      author = "Daan Leijen, Bastiaan Heeren, Jurriaan Hage";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/Helium/WebHome";
      url = "";
      synopsis = "The Lazy Virtual Machine (LVM).";
      description = "The Lazy Virtual Machine (LVM) defines a portable instruction set and file\nformat. It is specifically designed to execute languages with non-strict (or\nlazy) semantics. This cabal package defines the core assembler (coreasm) for\ncompiling core programs into LVM instructions and a library. The LVM is used\nas a backend for the Helium compiler. At the moment, one LVM runtime\nimplementation is available (written in C). More information about LVM can be\nfound in Chapter 6 of Daan Leijen's PhD Thesis, The Lambda Abroad.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.parsec)
          (hsPkgs.wl-pprint)
        ];
      };
      exes = {
        "coreasm" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.parsec)
            (hsPkgs.wl-pprint)
          ];
        };
      };
    };
  }