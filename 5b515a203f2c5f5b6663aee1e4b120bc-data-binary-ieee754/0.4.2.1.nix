{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-binary-ieee754";
          version = "0.4.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin";
        homepage = "http://john-millikin.com/software/data-binary-ieee754/";
        url = "";
        synopsis = "Parser/Serialiser for IEEE-754 floating-point values";
        description = "Convert Float and Decimal values to/from raw octets.";
        buildType = "Simple";
      };
      components = {
        "data-binary-ieee754" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
          ];
        };
        exes = {
          "data-binary-ieee754_tests" = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.bytestring
            ];
          };
        };
      };
    }