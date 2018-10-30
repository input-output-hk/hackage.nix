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
      specVersion = "1.14";
      identifier = {
        name = "tfp";
        version = "0.8";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Henning Thielemann, 2008 Peter Gavin";
      maintainer = "haskell@henning-thielemann.de";
      author = "Peter Gavin, Henning Thielemann";
      homepage = "http://www.haskell.org/haskellwiki/Type_arithmetic";
      url = "";
      synopsis = "Type-level integers, booleans, lists using type families";
      description = "TFP is an abbreviation for Type Family Programming.\nIt provides implementations of type-level integers and booleans,\nand (eventually) simple type-level data structures.\nIt uses type families as functions to produce new types,\nwhich provides an intuitive way to parameterize data types\nand functions on numerical values at compile time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "tfp-test" = {
          depends  = pkgs.lib.optionals (flags.build-test) [
            (hsPkgs.tfp)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
          ];
        };
      };
    };
  }