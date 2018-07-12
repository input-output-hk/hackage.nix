{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Decimal";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "Paul Johnson, 2011";
        maintainer = "paul@cogito.org.uk";
        author = "Paul Johnson";
        homepage = "";
        url = "";
        synopsis = "Decimal numbers with variable precision";
        description = "A decimal number has an integer mantissa and a negative\nexponent.  The exponent can be interpreted as the number\nof decimal places in the value.";
        buildType = "Simple";
      };
      components = {
        "Decimal" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          "Main" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.deepseq
            ];
          };
        };
      };
    }