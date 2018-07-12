{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unpacked-validation";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2018 chessai";
        maintainer = "chessai1996@gmail.com";
        author = "chessai";
        homepage = "https://github.com/chessai/unpacked-validation";
        url = "";
        synopsis = "An unpacked validation data type";
        description = "The 'Validation' type and associated operations.\n\nThis library is intended to be a drop-in replacement for /Data.Valiation/. To shave off pointer chasing, it uses -XUnboxedSums to represent the 'Validation' type as two machine words that are contiguous in memory, without loss of expressiveness that 'Validation' provides.\n\nThis library provides pattern synonyms Failure and Success, which allow users to pattern match on an Unpacked Validation in a familiar way.\n\nFunctions are also provided for converting an Unpacked Validation to the validation library's These, and vice versa.\n\nThis library is in alpha, and the internals are likely to change.";
        buildType = "Simple";
      };
      components = {
        "unpacked-validation" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.ghc-prim
            hsPkgs.unpacked-either
            hsPkgs.validation
          ];
        };
        tests = {
          "unpacked-validation-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.unpacked-validation
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-classes
            ];
          };
        };
      };
    }