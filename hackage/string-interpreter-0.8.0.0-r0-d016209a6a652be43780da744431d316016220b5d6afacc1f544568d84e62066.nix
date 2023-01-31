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
      identifier = { name = "string-interpreter"; version = "0.8.0.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/string-interpreter";
      url = "";
      synopsis = "Is used in the phonetic languages approach (e. g. in the recursive mode).";
      description = "A library that has commonly used functions for the phonetic-languages implementations that deals with String data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cli-arguments" or (errorHandler.buildDepError "cli-arguments"))
          (hsPkgs."phonetic-languages-permutations-array" or (errorHandler.buildDepError "phonetic-languages-permutations-array"))
          (hsPkgs."phonetic-languages-basis" or (errorHandler.buildDepError "phonetic-languages-basis"))
          ];
        buildable = true;
        };
      };
    }