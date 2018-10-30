{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { build-test = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "tfp";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Peter Gavin";
      maintainer = "pgavin@gmail.com";
      author = "Peter Gavin";
      homepage = "http://code.haskell.org/~pgavin/tfp";
      url = "http://code.haskell.org/~pgavin/tfp";
      synopsis = "Type-level programming library using type families";
      description = "TFP (short for Type Family Programming) provides implementations of type-level integers and booleans,\nand (eventually) simple type-level data structures. It uses type families as functions to produce new types,\nwhich provides an intuitive way to parameterize data types and functions on numerical values at compile time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "tfp-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }