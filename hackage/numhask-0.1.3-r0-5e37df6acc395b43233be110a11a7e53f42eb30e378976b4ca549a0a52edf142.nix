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
        name = "numhask";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask#readme";
      url = "";
      synopsis = "A numeric prelude";
      description = "A numeric prelude, providing a clean structure for numbers and operations that combine them.";
      buildType = "Simple";
    };
    components = {
      "numhask" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.protolude)
          (hsPkgs.tasty)
          (hsPkgs.tasty-quickcheck)
          (hsPkgs.base)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.protolude)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.doctest)
            (hsPkgs.numhask)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }