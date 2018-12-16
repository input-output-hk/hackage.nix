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
        name = "linear-code";
        version = "0.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "2018, Wanja Chresta";
      maintainer = "wanja dot hs at chrummibei dot ch";
      author = "Wanja Chresta";
      homepage = "https://github.com/wchresta/linear-code#readme";
      url = "";
      synopsis = "A simple library for linear codes (coding theory, error correction)";
      description = "Please see the README on GitHub at <https://github.com/wchresta/linear-code#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.HaskellForMaths)
          (hsPkgs.base)
          (hsPkgs.combinat)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.ghc-typelits-knownnat)
          (hsPkgs.ghc-typelits-natnormalise)
          (hsPkgs.matrix)
          (hsPkgs.random)
        ];
      };
      tests = {
        "linear-code-test" = {
          depends = [
            (hsPkgs.HaskellForMaths)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.combinat)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.ghc-typelits-knownnat)
            (hsPkgs.ghc-typelits-natnormalise)
            (hsPkgs.linear-code)
            (hsPkgs.matrix)
            (hsPkgs.random)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
          ];
        };
      };
    };
  }