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
      identifier = {
        name = "phonetic-languages-rhythmicity";
        version = "0.11.0.2";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-rhythmicity";
      url = "";
      synopsis = "Allows to estimate the rhythmicity properties for the text";
      description = "Allows to estimate (somewhat to say, evaluate) the rhythmicity properties for the text. Inspired by the ancient Greek and Latin poetry. Since the  0.11.0.0 version part of the functionality moved to the other package [phladiprelio-rhythmicity-shared](https://hackage.haskell.org/package/phladiprelio-rhythmicity-shared) to reduce code duplication .";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }