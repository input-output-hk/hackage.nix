{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "deepseq-generics"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2012, Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/deepseq-generics";
      url = "";
      synopsis = "GHC.Generics-based Control.DeepSeq.rnf implementation";
      description = "This package provides a \"GHC.Generics\"-based\n'Control.DeepSeq.Generics.genericRnf' function which can be used\nfor providing a 'rnf' implementation. See the documentation for\nthe 'genericRnf' function in the \"Control.DeepSeq.Generics\" module\nto get started.\n\nThe original idea was pioneered in the @generic-deepseq@ package\n(see <http://www.haskell.org/pipermail/haskell-cafe/2012-February/099551.html>\nfor more information).\n\nThis package differs from the @generic-deepseq@ package by working\nin combination with the existing @deepseq@ package as opposed to defining a\nconflicting drop-in replacement for @deepseq@'s @Control.Deepseq@ module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "deepseq-generics-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."deepseq-generics" or (errorHandler.buildDepError "deepseq-generics"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }