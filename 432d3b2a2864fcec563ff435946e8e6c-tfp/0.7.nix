{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build-test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tfp";
          version = "0.7";
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
        "tfp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
        exes = {
          "tfp-test" = {
            depends  = pkgs.lib.optionals _flags.build-test [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }