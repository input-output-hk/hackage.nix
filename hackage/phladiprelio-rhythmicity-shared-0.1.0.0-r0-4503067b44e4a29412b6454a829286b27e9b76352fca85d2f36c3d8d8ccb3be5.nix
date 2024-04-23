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
      specVersion = "2.4";
      identifier = {
        name = "phladiprelio-rhythmicity-shared";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr-Zhabenko";
      homepage = "";
      url = "";
      synopsis = "Allows to estimate some kind of the rhythmicity properties for the text";
      description = "The part of the package phonetic-languages-rhythmicity-0.10.2.0. See: [here](https://hackage.haskell.org/package/phonetic-languages-rhythmicity). Inspired by the ancient Greek and Latin poetry.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }