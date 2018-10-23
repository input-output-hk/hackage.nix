{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "numhask-test";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask#readme";
      url = "";
      synopsis = "Laws and tests for numhask";
      description = "Laws and tests for numhask.";
      buildType = "Simple";
    };
    components = {
      "numhask-test" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.numhask-prelude)
          (hsPkgs.tasty)
          (hsPkgs.tasty-quickcheck)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.numhask-test)
            (hsPkgs.numhask-prelude)
            (hsPkgs.tasty)
          ];
        };
      };
    };
  }