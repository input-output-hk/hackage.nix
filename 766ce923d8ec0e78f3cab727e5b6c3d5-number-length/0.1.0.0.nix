{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      pedantic = false;
      old-base = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "number-length";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015-2016, Peter Trško";
        maintainer = "peter.trsko@gmail.com";
        author = "Peter Trško";
        homepage = "https://github.com/trskop/number-length";
        url = "";
        synopsis = "Number of digits in a number in decimal and hexadecimal representation.";
        description = "There are situations when it is necessary to know the length of a number in\ndecimal or hexadecimal form. In example when allocating buffer while\nserializing a number in to binary or human readable format.";
        buildType = "Simple";
      };
      components = {
        "number-length" = {
          depends  = if _flags.old-base
            then [
              hsPkgs.base
              hsPkgs.tagged
            ]
            else [ hsPkgs.base ];
        };
        tests = {
          "unit-tests" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ] ++ (if _flags.old-base
              then [
                hsPkgs.base
                hsPkgs.tagged
              ]
              else [ hsPkgs.base ]);
          };
        };
        benchmarks = {
          "benchmark" = {
            depends  = [
              hsPkgs.criterion
              hsPkgs.number-length
            ] ++ (if _flags.old-base
              then [
                hsPkgs.base
                hsPkgs.tagged
              ]
              else [ hsPkgs.base ]);
          };
        };
      };
    }