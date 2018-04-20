{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ml-w";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Francesco Mazzoli <f@mazzo.li>";
        author = "Francesco Mazzoli <f@mazzo.li>";
        homepage = "";
        url = "";
        synopsis = "Minimal ML language to to demonstrate the W type\ninfererence algorithm.";
        description = "\nThis package implements a minimal ML-like language to demonstrate how the W\nalgorithm works.\n\nThe 'ML' module contains the definition of the language in the form of an\nHaskell data type, plus functions to parse files and pretty print the\ndatatype.\n\nThe 'TypeInfer' module contains the W algorithm itself.\n\nThe 'Main' module contains a program that parses and typechecks programs\nreading from standard input.\n\nThe program in 'Main' can be compiled with @make@, and the documentation\nwith @make docs@. It should work fine with @GHC@ version 6 or 7 (and\nmaybe more). It can also be loaded and ran with Hugs turning the\nextensions on (using the @-98@ flag) (or simply using the make target\n@loadhugs@).";
        buildType = "Simple";
      };
      components = {
        ml-w = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
          ];
        };
        exes = {
          ML = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.pretty
            ];
          };
        };
      };
    }