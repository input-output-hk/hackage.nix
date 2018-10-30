{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "numhask-array";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask-array#readme";
      url = "";
      synopsis = "See readme.md";
      description = "See readme.md for description.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.adjunctions)
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.dimensions)
          (hsPkgs.distributive)
          (hsPkgs.ghc-typelits-natnormalise)
          (hsPkgs.numhask)
          (hsPkgs.protolude)
          (hsPkgs.singletons)
          (hsPkgs.typelits-witnesses)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.numhask)
            (hsPkgs.numhask-array)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }