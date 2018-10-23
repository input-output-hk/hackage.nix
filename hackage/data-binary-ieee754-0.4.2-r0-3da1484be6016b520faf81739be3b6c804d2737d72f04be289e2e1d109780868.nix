{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "data-binary-ieee754";
        version = "0.4.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "http://ianen.org/haskell/data-binary-ieee754/";
      url = "";
      synopsis = "Parser/Serialiser for IEEE-754 floating-point values";
      description = "Convert Float and Decimal values to/from raw octets.";
      buildType = "Simple";
    };
    components = {
      "data-binary-ieee754" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
        ];
      };
      exes = {
        "data-binary-ieee754_tests" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }