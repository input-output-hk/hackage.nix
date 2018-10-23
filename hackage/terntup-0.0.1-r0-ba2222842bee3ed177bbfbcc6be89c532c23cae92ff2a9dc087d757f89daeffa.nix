{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "terntup";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrew.pennebaker@gmail.com";
      author = "Andrew Pennebaker";
      homepage = "";
      url = "";
      synopsis = "a ternary library";
      description = "a library for converting to and from (balanced) ternary";
      buildType = "Simple";
    };
    components = {
      "terntup" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "reference" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }