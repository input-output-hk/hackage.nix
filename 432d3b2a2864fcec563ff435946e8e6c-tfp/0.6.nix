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
          version = "0.6";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008 Peter Gavin";
        maintainer = "pgavin@gmail.com";
        author = "Peter Gavin";
        homepage = "http://github.com/pgavin/tfp";
        url = "http://github.com/pgavin/tfp";
        synopsis = "Type-level programming library using type families";
        description = "TFP (short for Type Family Programming) provides implementations of type-level integers and booleans,\nand (eventually) simple type-level data structures. It uses type families as functions to produce new types,\nwhich provides an intuitive way to parameterize data types and functions on numerical values at compile time.";
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