{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      integer-simple = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "numerals";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "2009–2014 Roel van Dijk, Bas van Dijk";
        maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
        author = "Roel van Dijk <vandijk.roel@gmail.com>, Bas van Dijk <v.dijk.bas@gmail.com>";
        homepage = "https://github.com/roelvandijk/numerals";
        url = "";
        synopsis = "Convert numbers to number words";
        description = "Convert numbers to number words in a number of languages. Each language has\nits own module. The module name is based on the ISO 639-3 code for that\nlanguage. Each module contains one or more 'cardinal' and 'ordinal' functions\nand a 'struct' function. The 'cardinal' functions directly convert cardinal\nnumbers to a string-like representation of their spoken form. The 'ordinal'\nfunctions do the same but for ordinal numbers. The 'struct' functions convert\nnumbers to a polymorphic representation of their grammatical structure.\nSee the \"Text.Numeral\" module for information on how to use this library.";
        buildType = "Simple";
      };
      components = {
        "numerals" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.fingertree
            hsPkgs.text
          ] ++ (if _flags.integer-simple
            then [ hsPkgs.integer-simple ]
            else [ hsPkgs.integer-gmp ]);
        };
        tests = {
          "test-numerals" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.text
              hsPkgs.numerals
            ];
          };
        };
        benchmarks = {
          "bench-numerals" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.numerals
            ];
          };
        };
      };
    }