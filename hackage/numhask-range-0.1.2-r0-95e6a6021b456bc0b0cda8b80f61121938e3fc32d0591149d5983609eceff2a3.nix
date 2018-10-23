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
        name = "numhask-range";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask-range#readme";
      url = "";
      synopsis = "Numbers that are range representations";
      description = "Numbers that represent ranges of all sorts.";
      buildType = "Simple";
    };
    components = {
      "numhask-range" = {
        depends  = [
          (hsPkgs.numhask)
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.QuickCheck)
          (hsPkgs.adjunctions)
          (hsPkgs.distributive)
          (hsPkgs.semigroupoids)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.numhask)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.numhask-range)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }