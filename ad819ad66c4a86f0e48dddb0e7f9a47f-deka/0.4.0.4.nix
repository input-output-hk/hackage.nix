{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "deka";
          version = "0.4.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Omari Norman";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/deka";
        url = "";
        synopsis = "Decimal floating point arithmetic";
        description = "deka provides decimal floating point arithmetic.  It\nis based on the decNumber C library, which is available\nat\n\n<http://speleotrove.com/decimal/decnumber.html>\n\ndecNumber, in turn, implements the General Decimal Arithmetic\nSpecification, which is available at\n\n<http://speleotrove.com/decimal/>\n\nFor more on deka, please see the Github home page at\n\n<https://github.com/massysett/deka>";
        buildType = "Configure";
      };
      components = {
        "deka" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        tests = {
          "tasty-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty
              hsPkgs.QuickCheck
              hsPkgs.bytestring
            ];
          };
        };
      };
    }