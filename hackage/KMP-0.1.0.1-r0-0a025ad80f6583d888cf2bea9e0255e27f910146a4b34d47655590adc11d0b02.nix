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
      specVersion = "1.9.2";
      identifier = { name = "KMP"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2012, Cindy Wang (CindyLinz)";
      maintainer = "Cindy Wang <cindylinz@gmail.com>";
      author = "Cindy Wang (CindyLinz)";
      homepage = "https://github.com/CindyLinz/Haskell-KMP";
      url = "";
      synopsis = "Knuth–Morris–Pratt string searching algorithm";
      description = "This module implements the Knuth-Morris-Pratt algorithm.\nIt can search a word in a text in O(m+n) time, where m and n are the length of the word and the text.\nThis module can apply on any list of instance of Eq.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."KMP" or (errorHandler.buildDepError "KMP"))
            ];
          buildable = true;
          };
        };
      };
    }