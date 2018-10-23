{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ABList";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Dylan Just, Travis Cardwell";
      maintainer = "Dylan Just";
      author = "Dylan Just <dylan@techtangents.com>";
      homepage = "";
      url = "";
      synopsis = "An alternating list of two types";
      description = "An alternating list of two types";
      buildType = "Simple";
    };
    components = {
      "ABList" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.linear)
          (hsPkgs.newtype)
        ];
      };
      tests = {
        "the-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }